from third_party.evaluator_base import EvaluatorBase
from third_party.test_suite_sql_eval.evaluation import evaluate, build_foreign_key_map_from_json


class SpiderAccraucyEvaluator(EvaluatorBase):
    
    metric_names = ["exec_acc", "exact_acc"]
    
    def __init__(self, dataset, preds, dataset_split):
        super().__init__(dataset, preds, dataset_split)
    
    def evaluate(self):
        golds = [f"{gold}\t{db_id}" for gold, db_id in zip(self.dataset.get_gold(self.dataset_split), self.dataset.get_db_ids(self.dataset_split))]
        entries = evaluate(
            golds=golds,
            preds=self.preds,
            db_dir=self.dataset.get_path_db_dir(self.dataset_split),
            etype="all",
            kmaps=build_foreign_key_map_from_json(self.dataset.get_path_tables_json(self.dataset_split)),
            plug_value=False,
            keep_distinct=False,
            progress_bar_for_each_datapoint=False
        )
        return {
            "exec_acc": [entry["exec"] for entry in entries],
            "exact_acc": [entry["exact"] for entry in entries]
        }