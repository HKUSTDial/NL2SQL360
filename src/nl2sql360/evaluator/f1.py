from .bird_eval.evaluation_f1 import run_sqls_parallel, sort_results
import os


class F1Evaluator:
    
    def __init__(self, sql_dialect="SQLite", **kwds) -> None:
        self.sql_dialect = sql_dialect
        self.db_host = kwds.get("db_host", None)
        self.db_port = kwds.get("db_port", None)
        self.db_name = kwds.get("db_name", None)
        self.user = kwds.get("db_user", None)
        self.password = kwds.get("db_password", None)
    
    def evaluate(self, gold_sqls, pred_sqls, db_ids, db_dir, **kwds):
        query_pairs = list(zip(pred_sqls, gold_sqls))
        db_places = [os.path.join(db_dir, db_id, f"{db_id}.sqlite") for db_id in db_ids]
        exec_result = run_sqls_parallel(
            sqls=query_pairs,
            db_places=db_places,
            num_cpus=kwds.get("num_processes", 8),
            meta_time_out=kwds.get("timeout", 30),
            sql_dialect=self.sql_dialect,
            host=self.db_host,
            user=self.user,
            password=self.password,
            dbname=self.db_name,
            port=self.db_port
        )
        exec_result = sort_results(exec_result)
        exec_result = [res['res'] for res in exec_result]
        return {
            "f1": exec_result
        }
    
    def get_eval_metrics(self):
        return ["f1"]