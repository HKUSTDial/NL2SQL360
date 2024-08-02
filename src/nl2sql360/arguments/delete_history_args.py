from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, Literal, List, Union, Dict
from ..filter import parse_filter, parse_scenario


@dataclass
class DeleteHistoryArguments:
    r"""
    Arguments for deleting datasets and evaluations.
    """

    dataset_name: Optional[str] = field(
        default=None,
        metadata={"help": "The dataset (list) to delete."}
    )
    
    delete_dataset_evaluations: Optional[bool] = field(
        default=True,
        metadata={"help": "Whether to delete relevant evaluations for dataset."}
    )
    
    eval_name: Optional[str] = field(
        default=None,
        metadata={"help": "The evaluation (list) to delete, each item contains two keys `dataset` and `evaluation`."}
    )

    def __post_init__(self):
        if self.dataset_name is None and self.eval_name is None:
            raise ValueError("`dataset_name` and `eval_name` cannot be empty at the same time.")
        
        if self.dataset_name is None and self.eval_name is not None:
            raise ValueError("Need to specify `dataset_name` for `eval_name` evaluation.")