from sqlalchemy import create_engine, inspect
from sqlalchemy.orm import Session
from engine.model import get_dataset_model, get_evaluation_model, Base
from engine.utils import *
from loguru import logger
from tqdm import tqdm
from sql_parse.parser import Parser
from third_party.bird_accuracy import BirdAccraucyEvaluator
from third_party.spider_accuracy import SpiderAccraucyEvaluator
from third_party.ves import VesEvaluator
from dataset.dataset_builder import SpiderDataset, BirdDataset


class Engine:
    
    def __init__(self, db_url):
        self.engine = create_engine(db_url)
        self.insp = inspect(self.engine)
        self.models_dict = dict()
        for table_name in self.insp.get_table_names():
            if "EVALUATION" in table_name:
                self.models_dict[table_name] = get_evaluation_model(*get_dataset_name_and_evaluation_name_from_table_name(table_name))
            else:
                self.models_dict[table_name] = get_dataset_model(get_dataset_name_from_table_name(table_name))
        
        self.dataset_evaluator_cls = {
            SpiderDataset: [SpiderAccraucyEvaluator, VesEvaluator],
            BirdDataset: [BirdAccraucyEvaluator, VesEvaluator]
        }
    
    def create_dataset_table(self, dataset, dataset_split):
        table_name = f"DATASET_{dataset.name}_{dataset_split}"
        if table_name in self.models_dict.keys():
            logger.warning(f"Table {table_name} already exists")
            return self.models_dict[table_name]
        dataset_model = get_dataset_model(f"{dataset.name}_{dataset_split}")
        self.models_dict[dataset_model.__tablename__] = dataset_model
        Base.metadata.create_all(self.engine, checkfirst=True)
        logger.success(f"Table {table_name} created")
        return dataset_model
    
    def create_evaluation_table(self, dataset, dataset_split, evaluation_name):
        table_name = f"DATASET_{dataset.name}_{dataset_split}_EVALUATION_{evaluation_name}"
        if table_name in self.models_dict.keys():
            logger.warning(f"Table {table_name} already exists!")
            return self.models_dict[table_name]
        evaluation_model = get_evaluation_model(f"{dataset.name}_{dataset_split}", evaluation_name)
        self.models_dict[evaluation_model.__tablename__] = evaluation_model
        Base.metadata.create_all(self.engine, checkfirst=True)
        logger.success(f"Table {table_name} created")
        return evaluation_model
    
    def insert_dataset_table(self, dataset, dataset_split, raw_data):
        """Insert dataset table with raw data, and parse the characters of sql

        Args:
            dataset (MetaDataset): the dataset object
            dataset_split (str): the split of dataset
            raw_data (list[dict]): [dict(id, nlq, gold, db_id, hardness, db_domain), ...]
        """
        
        table_name = f"DATASET_{dataset.name}_{dataset_split}"
        if table_name not in self.models_dict.keys():
            logger.warning(f"Table {table_name} dose not exist, it will be automatically created")
            self.create_dataset_table(dataset, dataset_split)
        with Session(self.engine) as session:
            for data in tqdm(raw_data, desc="Intert into dataset table"):
                parser = Parser(data["gold"])
                table_item = self.models_dict[table_name](
                    **data,
                    **{attr: getattr(parser, attr) for attr in dir(parser) if attr.startswith("count_")}
                )
                session.add(table_item)
            session.commit()
        logger.success(f"Inserting {len(raw_data)} samples into table {table_name} completed")
    
    def insert_evaluation_table(self, dataset, dataset_split, evaluation_name, preds):
        """Insert data into evaluation table and do corresponding evaluations

        Args:
            dataset (MetaDataset): the dataset object
            dataset_split (str): the split of dataset
            evaluation_name (str): the evaluation name
            preds (list): [pred, ...]
        """
        
        table_name = f"DATASET_{dataset.name}_{dataset_split}_EVALUATION_{evaluation_name}"
        if table_name not in self.models_dict.keys():
            logger.warning(f"Table {table_name} dose not exist, it will be automatically created")
            self.create_evaluation_table(dataset, dataset_split, evaluation_name)
        
        metric_names = []
        for evaluator_cls in self.dataset_evaluator_cls[dataset.__class__]:
            metric_names.extend(evaluator_cls.metric_names)
        logger.info(f"Available metrics for {dataset.name}: {metric_names}")
        
        eval_results = dict()
        for evaluator_cls in self.dataset_evaluator_cls[dataset.__class__]:
            logger.info(f"Evaluating {evaluator_cls.metric_names}...")
            evaluator = evaluator_cls(dataset, preds, dataset_split)
            if isinstance(evaluator, VesEvaluator) and isinstance(dataset, SpiderDataset):
                exec_acc_list = eval_results.get("exec_acc", None)
                if exec_acc_list is None:
                    logger.warning(f"Evaluating ves metric for spider dataset with bird-style execution accuracy")
                else:
                    logger.info(f"Evaluating ves metric for spider dataset with spider-style execution accuracy")
                eval_results.update(evaluator.evaluate(exec_acc_list=exec_acc_list))
            else:
                eval_results.update(evaluator.evaluate())
            logger.success(f"Evaluate {evaluator_cls.metric_names} Done")
        
        insert_data = []
        for idx, pred in enumerate(preds):
            item = {
                "id": idx,
                "pred": pred
            }
            for metric in metric_names:
                item[metric] = eval_results[metric][idx]
            insert_data.append(item)
        
        with Session(self.engine) as session:
            for data in tqdm(insert_data, desc="Intert into evaluation table"):
                table_item = self.models_dict[table_name](
                    **data
                )
                session.add(table_item)
            session.commit()
        logger.success(f"Inserting {len(insert_data)} samples into table {table_name} completed")
