from .test_suite_sql_eval.evaluation import evaluate, build_foreign_key_map_from_json
from loguru import logger


class SpiderEXEMEvaluator:
    
    def __init__(self, eval_ex, eval_em):
        self.eval_ex = eval_ex
        self.eval_em = eval_em
        
    def get_eval_metrics(self):
        eval_metrics = []
        if self.eval_ex:
            eval_metrics.append("exec_acc")
        if self.eval_em:
            eval_metrics.append("exact_acc")
        return eval_metrics
    
    def evaluate(self, gold_sqls, pred_sqls, db_ids, db_dir, **kwds):
        if self.eval_ex and self.eval_em:
            etype = "all"
        elif self.eval_ex:
            etype = "exec"
        elif self.eval_em:
            etype = "match"
        else:
            logger.warning(f"Spider evaluator has not been set with evaluation metrics and is defaulted to EX.")
            etype = "exec"
        
        kmaps = None
        
        if etype in ["all", "match"]:
            if kwds.get("tables_json_path", None) is None:
                logger.warning(f"`EM` metric evaluation need tables json path passed in. Exclude `EM` by default.")
                etype = "exec"
                kmaps = None
            else:
                kmaps = build_foreign_key_map_from_json(kwds.get("tables_json_path"))
            
        golds = [f"{gold}\t{db_id}" for gold, db_id in zip(gold_sqls, db_ids)]
        
        entries = evaluate(
            golds=golds,
            preds=pred_sqls,
            db_dir=db_dir,
            etype=etype,
            kmaps=kmaps,
            plug_value=False,
            keep_distinct=False,
            progress_bar_for_each_datapoint=False
        )

        return {
            "exec_acc": [entry.get("exec", None) for entry in entries],
            "exact_acc": [entry.get("exact", None) for entry in entries]
        }