from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, Literal, List, Union, Dict
from types import NoneType
from ..filter import parse_filter, parse_scenario


@dataclass
class ReportArguments:
    r"""
    Arguments for reporting dataset and evaluation.
    """

    save_path: str = field(
        metadata={"help": "The path to save the CSV report."}
    )

    report_dataset: str = field(
        metadata={"help": "The dataset name to report."}
    )
    
    report_evaluation: Union[Optional[str], List[str]] = field(
        default=None,
        metadata={"help": "The evaluation (list) to report."}
    )
    
    metric: Union[str, List[str]] = field(
        default=None,
        metadata={"help": "The metric (list) to report."}
    )
    
    filter: Union[Optional[str], List[str]] = field(
        default=None,
        metadata={"help": "The filter expressions (list) used to filter subset performance."}
    )
    
    scenario: Union[Optional[str], List[str]] = field(
        default=None,
        metadata={"help": "The scenario expressions (list) used to filter subset performance."}
    )
    
    def __post_init__(self):
        if isinstance(self.metric, str):
            self.metric = [m.strip() for m in self.metric.split(",")]
        
        for metric in self.metric:
            if metric not in ["ex", "em", "ves"]:
                raise ValueError("`eval_metrics` only supports metrics combinations in (`ex`, `em`, `ves`).")
            
        filter_list = []
        try:
            for _f in self.filter:
                f = parse_filter(_f["name"], _f["expression"])
                if f is None:
                    raise ValueError(f"Parse filter error: {_f}")
                filter_list.append(f)
        except Exception as e:
            raise ValueError("Parse filter error.")
        self.filter = filter_list
        
        scenario_list = []
        try:
            for _s in self.scenario:
                s = parse_scenario(_s["name"], _s["expression"])
                if s is None:
                    raise ValueError(f"Parse scenario error: {_s}")
                scenario_list.append(s)
        except Exception as e:
            raise ValueError("Parse scenario error.")
        self.scenario = scenario_list
