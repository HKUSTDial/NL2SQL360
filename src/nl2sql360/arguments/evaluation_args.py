from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, Literal, List


@dataclass
class EvaluationArguments:
    r"""
    Arguments for evaluation.
    """
    
    eval_name: str = field(
        metadata={"help": "The model name for evaluation."}
    )
    
    eval_dataset: str = field(
        metadata={"help": "The dataset name for evaluation."}
    )
    
    eval_metrics: List[str] = field(
        metadata={"help": "Specify metrics (`ex`, `em`, `ves`) for evaluation."}
    )
    
    pred_sqls_file: str = field(
        metadata={"help": "The file containing all predicted sqls (in lines)."}
    )
    
    enable_spider_eval: bool = field(
        default=False,
        metadata={"help": "Enable official spider evaluator."}
    )
    
    num_processes: int = field(
        default=8,
        metadata={"help": "The number of multi-processes used in the evaluation "}
    )
    
    timeout: float = field(
        default=30.0,
        metadata={"help": "The timeout of SQL execution."}
    )
    
    # for bird mini-dev MySQL / PostgreSQL database
        
    db_host: str = field(
        default="localhost",
        metadata={"help": "The db host (`localhost` by default) for BIRD Mini-Dev dataset to connect MySQL or PostgreSQL database. "}
    )
    
    db_port: str = field(
        default="localhost",
        metadata={"help": "The db port (`3306` for MySQL, `5432` for PostgreSQL by default) for BIRD Mini-Dev dataset to connect MySQL or PostgreSQL database. "}
    )
    
    db_name: str = field(
        default="BIRD",
        metadata={"help": "The db name (`BIRD` by default) for BIRD Mini-Dev dataset to connect MySQL or PostgreSQL database."}
    )
    
    db_user: str = field(
        default="root",
        metadata={"help": "The db username (`root` by default) for BIRD Mini-Dev dataset to connect MySQL or PostgreSQL database. "}
    )
    
    db_password: str = field(
        default="localhost",
        metadata={"help": "The db password (`password` by default) for BIRD Mini-Dev dataset to connect MySQL or PostgreSQL database. "}
    )
    
    def __post_init__(self):
        
        for metric in self.eval_metrics:
            if metric not in ["ex", "em", "ves", "rves", "f1"]:
                raise ValueError("`eval_metrics` only supports metrics combinations in (`ex`, `em`, `ves`).")
            
        if self.num_processes <= 0:
            raise ValueError("`num_processes` should be positive.")
        
        if self.timeout <= 0:
            raise ValueError("`timeout` should be positive.")

