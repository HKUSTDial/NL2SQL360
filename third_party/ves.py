from third_party.evaluator_base import EvaluatorBase
from third_party.bird_eval.bird_ves import run_sqls_parallel, sort_results
import math


class VesEvaluator(EvaluatorBase):
    
    """The general VES metric evaluator
    Note: For Spider evaluation, we specific the pre-eval execution accuracy list into VES calculate
    """
    
    metric_names = ["ves"]
    
    def __init__(self, dataset, preds, dataset_split):
        super().__init__(dataset, preds, dataset_split)
    
    def evaluate(self, **kwargs):
        exec_acc_list = kwargs.get("exec_acc_list", None)
        query_pairs = list(zip(self.preds, self.dataset.get_gold(self.dataset_split)))
        ves_result = run_sqls_parallel(
            sqls=query_pairs,
            db_places=self.dataset.get_path_db_sqlites(self.dataset_split),
            num_cpus=16,
            meta_time_out=5,
            exec_acc_list=exec_acc_list
        )
        ves_result = sort_results(ves_result)
        
        ves_result = [math.sqrt(res['time_ratio']) * 100 for res in ves_result]
        return {
            "ves": ves_result
        }
