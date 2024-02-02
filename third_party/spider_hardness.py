from third_party.test_suite_sql_eval.process_sql import get_schema, Schema, get_sql
from third_party.test_suite_sql_eval.evaluation import Evaluator
from third_party.evaluator_base import EvaluatorBase


class SpiderHardnessEvaluator(EvaluatorBase):
    
    def __init__(self, golds, preds, db_paths):
        super().__init__(golds, preds, db_paths)
        self.evaluator = Evaluator()
        
    @property
    def metric_names(self):
        return ["hardness"]
    
    def evaluate(self):
        hardness_list = []
        for gold, db_path in zip(self.golds, self.db_paths):
            schema = Schema(get_schema(db_path))
            g_sql = get_sql(schema, gold)
            hardness = self.evaluator.eval_hardness(g_sql)
            hardness_list.append(hardness)
        return {"hardness": hardness_list}
