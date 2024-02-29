from third_party.evaluator_base import EvaluatorBase
from third_party.bird_eval.bird_accuracy import run_sqls_parallel, sort_results


class BirdAccraucyEvaluator(EvaluatorBase):
    
    metric_names = ["exec_acc"]
    
    def __init__(self, dataset, preds, dataset_split):
        super().__init__(dataset, preds, dataset_split)
    
    def evaluate(self):
        query_pairs = list(zip(self.preds, self.dataset.get_gold(self.dataset_split)))
        exec_result = run_sqls_parallel(
            sqls=query_pairs,
            db_places=self.dataset.get_path_db_sqlites(self.dataset_split),
            num_cpus=16,
            meta_time_out=30
        )
        exec_result = sort_results(exec_result)
        exec_result = [res['res'] for res in exec_result]
        return {
            "exec_acc": exec_result
        }