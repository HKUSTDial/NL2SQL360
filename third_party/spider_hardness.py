from third_party.test_suite_sql_eval.process_sql import get_schema, Schema, get_sql
from third_party.test_suite_sql_eval.evaluation import Evaluator
from third_party.evaluator_base import EvaluatorBase


class SpiderHardnessEvaluator(EvaluatorBase):
    
    metric_names = ["hardness"]
    
    def __init__(self, dataset, preds, dataset_split):
        super().__init__(dataset, preds, dataset_split)
        self.evaluator = Evaluator()
    
    def evaluate(self):
        hardness_list = []
        for gold, db_path in zip(self.dataset.get_gold(self.dataset_split), self.dataset.get_path_db_sqlites(self.dataset_split)):
            schema = Schema(get_schema(db_path))
            try:
                g_sql = get_sql(schema, gold)
            except:
                print(db_path)
                print(gold)
                exit(-1)
            hardness = self.evaluator.eval_hardness(g_sql)
            hardness_list.append(hardness)
        return {"hardness": hardness_list}
