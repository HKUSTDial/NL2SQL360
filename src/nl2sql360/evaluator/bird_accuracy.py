from .bird_eval.bird_accuracy import run_sqls_parallel, sort_results
import os


class BirdAccraucyEvaluator:
    
    def evaluate(self, gold_sqls, pred_sqls, db_ids, db_dir, **kwds):
        query_pairs = list(zip(pred_sqls, gold_sqls))
        db_places = [os.path.join(db_dir, db_id, f"{db_id}.sqlite") for db_id in db_ids]
        exec_result = run_sqls_parallel(
            sqls=query_pairs,
            db_places=db_places,
            num_cpus=kwds.get("num_processes", 8),
            meta_time_out=kwds.get("timeout", 30)
        )
        exec_result = sort_results(exec_result)
        exec_result = [res['res'] for res in exec_result]
        return {
            "exec_acc": exec_result
        }
    
    def get_eval_metrics(self):
        return ["exec_acc"]