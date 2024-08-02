from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, Literal, List, Union, Dict
from ..filter import parse_filter, parse_scenario


@dataclass
class DeleteHistoryArguments:
    r"""
    Arguments for deleting datasets and evaluations.
    """

    delete_dataset: Union[str, List[str]] = field(
        default=None,
        metadata={"help": "The dataset (list) to delete."}
    )
    
    delete_dataset_evaluations: bool = field(
        default=True,
        metadata={"help": "Whether to delete relevant evaluations for dataset."}
    )
    
    delete_evaluation: Union[str, List[str]] = field(
        default=None,
        metadata={"help": "The evaluation (list) to delete."}
    )

    def __post_init__(self):
        if self.delete_dataset is None and self.delete_evaluation is None:
            raise ValueError("`delete_dataset` and `delete_evaluation` cannot be empty at the same time.")