from sqlalchemy import create_engine, inspect, text
from sqlalchemy.orm import Session
from loguru import logger
from tqdm import tqdm
from pathlib import Path
from typing import Sequence, Optional, List, Dict
from pathlib import Path
from pandas import DataFrame
import pandas as pd


from ..database import (Base,
                        DatasetInfo,
                        get_dataset_model,
                        get_evaluation_model,
                        get_dataset_name_from_table_name,
                        get_dataset_name_and_evaluation_name_from_table_name,
                        get_dataset_info,
                        get_dataset_samples,
                        METRIC_COL_MAPPING,
                        QUERY_OVERALL_PERFORMANCE,
                        QUERY_QVT_PERFORMANCE,
                        QUERY_SUBSET_PERFORMANCE)
from ..parser import SQLParser
from ..dataset import NL2SQLDataset
from ..arguments import CoreArguments, DatasetArguments, EvaluationArguments
from ..evaluator import BirdAccraucyEvaluator, SpiderAccraucyEvaluator, VesEvaluator
from ..filter import Filter, Scenario, serialize_filter, serialize_scenario


class _Core:
    r"""
    Base core class implementation for importing datasets and evaluating.
    """
    
    def __init__(self, core_args: "CoreArguments") -> None:
        self.core_args = core_args
        Path(core_args.core_dir).mkdir(exist_ok=True)
        self.engine = create_engine(f"sqlite:///{core_args.core_dir}/{core_args.core_name}.sqlite")
        self.insp = inspect(self.engine)
        Base.metadata.create_all(self.engine, checkfirst=True)  # `DatasetInfo` Table Initialize
        self.models_dict = dict()
        for table_name in self.insp.get_table_names():
            if table_name == "__DATASET_INFO__":
                continue
            if "_EVALUATION_" in table_name:
                self.models_dict[table_name] = get_evaluation_model(*get_dataset_name_and_evaluation_name_from_table_name(table_name))
            else:
                self.models_dict[table_name] = get_dataset_model(get_dataset_name_from_table_name(table_name))
                
    def import_dataset(self, dataset_args: "DatasetArguments") -> None:
        table_name = f"DATASET_{dataset_args.dataset_name}"
        if table_name in self.models_dict.keys():
            logger.warning(f"Dataset `{dataset_args.dataset_name}` has been already imported.")
            return
        
        dataset_model = get_dataset_model(dataset_args.dataset_name)
        self.models_dict[dataset_model.__tablename__] = dataset_model
        Base.metadata.create_all(self.engine, checkfirst=True)
        logger.success(f"Dataset table `{table_name}` creation completed.")
        
        dataset = NL2SQLDataset(dataset_args)
        with Session(self.engine) as session:
            # Insert dataset info
            dataset_info_item = DatasetInfo(
                dataset_name=dataset_args.dataset_name,
                database_dir_path=str(Path(dataset_args.dataset_dir, dataset_args.database_dir).absolute()),
                tables_json_path=str(Path(dataset_args.dataset_dir, dataset_args.tables_file)) if dataset_args.tables_file else None
            )
            session.add(dataset_info_item)
            
            # Insert dataset samples
            for id, (nlq, gold, db_id, complexity, db_domain) in enumerate(tqdm(list(zip(
                dataset.get_all_questions(),
                dataset.get_all_sqls(),
                dataset.get_all_db_ids(),
                dataset.get_all_sql_complexity(),
                dataset.get_all_database_domains()
            )), desc="Import dataset")):
                parsed_sql = SQLParser(gold)
                table_item = self.models_dict[table_name](
                    id=id,
                    nlq=nlq,
                    gold=gold,
                    db_id=db_id,
                    complexity=complexity,
                    db_domain=db_domain,
                    **{attr: getattr(parsed_sql, attr) for attr in dir(parsed_sql) if attr.startswith("count_")}
                )
                session.add(table_item)
            session.commit()
        logger.success(f"Import dataset `{dataset_args.dataset_name}` completed, {len(dataset)} samples in total.")
        
    def evaluate(self, evaluation_args: "EvaluationArguments") -> None:
        dataset_table_name = f"DATASET_{evaluation_args.eval_dataset}"
        if dataset_table_name not in self.models_dict.keys():
            logger.warning(f"Dataset `{evaluation_args.eval_dataset}` has not been imported.")
            return
        
        table_name = f"DATASET_{evaluation_args.eval_dataset}_EVALUATION_{evaluation_args.eval_name}"
        if table_name in self.models_dict.keys():
            logger.warning(f"Evaluation `{evaluation_args.eval_name}` on dataset `{evaluation_args.eval_dataset}` has been existed.")
            return
        
        evaluation_model = get_evaluation_model(evaluation_args.eval_dataset, evaluation_args.eval_name)
        self.models_dict[evaluation_model.__tablename__] = evaluation_model
        Base.metadata.create_all(self.engine, checkfirst=True)
        logger.success(f"Evaluation table `{table_name}` creation completed.")
        
        dataset_info = get_dataset_info(self.engine, evaluation_args.eval_dataset)
        if dataset_info is None:
            logger.error(f"Cannot find imported dataset `{evaluation_args.eval_dataset}`.")
            return
        
        evaluators = []
        if "ex" in evaluation_args.eval_metrics:
            if evaluation_args.enable_spider_eval:
                eval_em = "em" in evaluation_args.eval_metrics and dataset_info.tables_json_path
                if "em" in evaluation_args.eval_metrics and dataset_info.tables_json_path is None:
                    logger.warning(f"`EM` metric evaluation ignored, due to no imported `tables_file` for {evaluation_args.eval_dataset} dataset.")
                evaluators.append(SpiderAccraucyEvaluator(eval_em=eval_em, eval_ex=True))
            else:
                eval_em = "em" in evaluation_args.eval_metrics and dataset_info.tables_json_path
                if "em" in evaluation_args.eval_metrics and dataset_info.tables_json_path is None:
                    logger.warning(f"`EM` metric evaluation ignored, due to no imported `tables_file` for {evaluation_args.eval_dataset} dataset.")
                if eval_em:
                    evaluators.append(SpiderAccraucyEvaluator(eval_em=eval_em, eval_ex=False))
                evaluators.append(BirdAccraucyEvaluator())
        elif "em" in evaluation_args.eval_metrics:
            if dataset_info.tables_json_path is None:
                logger.warning(f"`EM` metric evaluation ignored, due to no imported `tables_file` for {evaluation_args.eval_dataset} dataset.")
            else:
                evaluators.append(SpiderAccraucyEvaluator(eval_em=True, eval_ex=False))
                
        if "ves" in evaluation_args.eval_metrics:
            evaluators.append(VesEvaluator(reuse_ex=evaluation_args.enable_spider_eval))

        with open(evaluation_args.pred_sqls_file, "r", encoding="utf-8") as f:
            pred_sqls = f.readlines()
        
        dataset_samples = get_dataset_samples(self.engine, self.models_dict[dataset_table_name])
        gold_sqls = [sample["gold"] for sample in dataset_samples]
        db_ids = [sample["db_id"] for sample in dataset_samples]
        
        eval_results = dict()
        eval_metrics = set()
        for evaluator in evaluators:
            logger.info(f"Evaluating {evaluator.get_eval_metrics()}...")
            exec_acc_list = eval_results.get("exec_acc", None)
            eval_results.update(evaluator.evaluate(
                gold_sqls=gold_sqls,
                pred_sqls=pred_sqls,
                db_ids=db_ids,
                db_dir=dataset_info.database_dir_path,
                tables_json_path=dataset_info.tables_json_path,
                exec_acc_list=exec_acc_list
            ))
            logger.success(f"Evaluating {evaluator.get_eval_metrics()} completed.")
            eval_metrics.update(evaluator.get_eval_metrics())

        insert_data = []
        for idx, pred in enumerate(pred_sqls):
            item = {
                "id": idx,
                "pred": pred
            }
            for metric in eval_metrics:
                item[metric] = eval_results[metric][idx]
            insert_data.append(item)
        
        with Session(self.engine) as session:
            for data in tqdm(insert_data, desc="Intert into evaluation table"):
                table_item = self.models_dict[table_name](
                    **data
                )
                session.add(table_item)
            session.commit()
        logger.success(f"Evaluation `{evaluation_args.eval_name}` completed.")


class Core(_Core):
    r"""
    Extended core class implementation, including more user query interfaces.
    """
    
    def query_available_datasets(self) -> DataFrame:
        datasets = [get_dataset_name_from_table_name(table) 
                    for table in self.models_dict.keys() 
                    if table.startswith("DATASET_") and "_EVALUATION_" not in table]
        return DataFrame(data={"Dataset": datasets})
    
    def query_available_evaluations(self, dataset_name: str) -> DataFrame:
        evaluations = [get_dataset_name_and_evaluation_name_from_table_name(table)[1] 
                       for table in self.models_dict.keys() 
                       if table.startswith(f"DATASET_{dataset_name}") and "_EVALUATION_" in table]
        return DataFrame(data={"Evaluation": evaluations})
    
    def _check_dataset_valid(self, dataset_name: str) -> bool:
        if dataset_name in self.query_available_datasets()["Dataset"].values:
            return True
        else:
            logger.warning(f"Cannot find `{dataset_name}` dataset in NL2SQL360.")
            return False 
    
    def _check_evaluation_valid(self, dataset_name: str, eval_name: str) -> bool:
        if eval_name in self.query_available_evaluations(dataset_name)["Evaluation"].values:
            return True
        else:
            logger.warning(f"Cannot find `{eval_name}` evaluation for `{dataset_name}` dataset in NL2SQL360.")
            return False
            
    def _check_metric_valid(self, metric: str) -> bool:
        if metric in METRIC_COL_MAPPING.keys():
            return True
        else:
            logger.warning(f"`{metric}` metric is not supported, available metrics: (`ex`, `em`, `ves`, `qvt`).")
            return False
    
    def query_overall_performance(self, dataset_name: str, metric: str, eval_name: str) -> DataFrame:
        if not (self._check_dataset_valid(dataset_name) and self._check_evaluation_valid(dataset_name, eval_name) and self._check_metric_valid(metric)):
            return None
        else:
            if metric == "qvt":
                statetment = QUERY_QVT_PERFORMANCE.format(
                    DATASET_NAME=dataset_name,
                    EVAL_NAME=eval_name
                )
            else:
                statetment = QUERY_OVERALL_PERFORMANCE.format(
                    DATASET_NAME=dataset_name,
                    EVAL_NAME=eval_name,
                    METRIC_COL=METRIC_COL_MAPPING[metric]
                )
            with self.engine.connect() as connection:
                result = connection.execute(text(statetment))
                connection.commit()
            res = result.first()
            if res:
                return DataFrame(data={"Evaluation": eval_name, metric.upper(): res}).round(decimals=2)
            else:
                logger.warning("Query an empty result.")
                return DataFrame(columns=[metric])
    
    def query_overall_leaderboard(self, dataset_name: str, metric: str, eval_names: List[str] = None) -> DataFrame:
        if not (self._check_dataset_valid(dataset_name) and self._check_metric_valid(metric)):
            return None
        
        if eval_names:
            for eval_name in eval_names:
                if not self._check_evaluation_valid(dataset_name, eval_name):
                    return None
        else:
            eval_names = self.query_available_evaluations(dataset_name)["Evaluation"].values
        dataframes = []
        for eval_name in eval_names:
            dataframes.append(self.query_overall_performance(dataset_name, metric, eval_name))
        df = pd.concat(dataframes, ignore_index=True).sort_values(by=[metric.upper(), "Evaluation"], ascending=False)
        return df

    def query_subset_performance(self, dataset_name: str, filter: Filter, metric: str, eval_name: str) -> DataFrame:
        if not (self._check_dataset_valid(dataset_name) and self._check_evaluation_valid(dataset_name, eval_name) and self._check_metric_valid(metric)):
            return None
        
        if metric == "qvt":
            logger.warning(f"QVT metric only supports overall performance.")
            return None
        
        statetment = QUERY_SUBSET_PERFORMANCE.format(
            DATASET_NAME=dataset_name,
            EVAL_NAME=eval_name,
            METRIC_COL=METRIC_COL_MAPPING[metric],
            WHERE_CONDITION=serialize_filter(filter)
        )
        with self.engine.connect() as connection:
            result = connection.execute(text(statetment))
            connection.commit()
        res = result.first()
        if res:
            return DataFrame(data={"Evaluation": eval_name, metric.upper(): res}).round(decimals=2)
        else:
            logger.warning("Query an empty result.")
            return DataFrame(data={"Evaluation": eval_name, metric.upper(): pd.NA})

    def query_subset_leaderboard(self, dataset_name: str, filter: Filter, metric: str, eval_names: List[str] = None) -> DataFrame:
        if not (self._check_dataset_valid(dataset_name) and self._check_metric_valid(metric)):
            return None
        
        if eval_names:
            for eval_name in eval_names:
                if not self._check_evaluation_valid(dataset_name, eval_name):
                    return None
        else:
            eval_names = self.query_available_evaluations(dataset_name)["Evaluation"].values
        dataframes = []
        for eval_name in eval_names:
            dataframes.append(self.query_subset_performance(dataset_name, filter, metric, eval_name))
        df = pd.concat(dataframes, ignore_index=True).sort_values(by=[metric.upper(), "Evaluation"], ascending=False)
        return df
    
    def query_scenario_performance(self, dataset_name, scenario, metric, eval_name) -> DataFrame:
        pass
    
    def query_scenario_leaderboard(self, dataset_name, scenario, metric, eval_names: List[str] = None) -> DataFrame:
        pass
    
    def generate_dataset_report(self, dataset_name) -> DataFrame:
        pass
    
    def generate_evaluation_report(self, dataset_name, filters, scenarios, metrics, eval_names: List[str] = None) -> DataFrame:
        pass
    
    def delete_dataset_history(self, dataset_name) -> DataFrame:
        pass
    
    def delete_evaluation_history(self, dataset_name, eval_name) -> DataFrame:
        pass
    