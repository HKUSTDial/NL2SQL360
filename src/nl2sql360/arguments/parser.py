import os
import sys
import loguru
from typing import Any, Dict, Optional, Tuple
from .hf_argparser import HfArgumentParser

from .core_args import CoreArguments
from .dataset_args import DatasetArguments
from .evaluation_args import EvaluationArguments
from .report_args import ReportArguments
from .delete_history_args import DeleteHistoryArguments


_DATASET_IMPORT_ARGS = [CoreArguments, DatasetArguments]
_DATASET_IMPORT_CLS = Tuple[CoreArguments, DatasetArguments]
_EVALUATION_ARGS = [CoreArguments, EvaluationArguments]
_EVALUATION_CLS = Tuple[CoreArguments, EvaluationArguments]
_REPORT_ARGS = [CoreArguments, ReportArguments]
_REPORT_CLS = Tuple[CoreArguments, ReportArguments]
_DELETE_HISTORY_ARGS = [CoreArguments, DeleteHistoryArguments]
_DELETE_HISTORY_CLS = Tuple[CoreArguments, DeleteHistoryArguments]


def _parse_args(parser: "HfArgumentParser", args: Optional[Dict[str, Any]] = None) -> Tuple[Any]:
    if args is not None:
        return parser.parse_dict(args)
    
    if len(sys.argv) == 2 and sys.argv[1].endswith(".yaml"):
        return parser.parse_yaml_file(os.path.abspath(sys.argv[1]))
    
    (*parsed_args, unknown_args) = parser.parse_args_into_dataclasses(return_remaining_strings=True)
    
    if unknown_args:
        print(parser.format_help())
        print("Got unknown args, potentially deprecated arguments: {}".format(unknown_args))
        raise ValueError("Some specified arguments are not used by the HfArgumentParser: {}".format(unknown_args))

    return (*parsed_args,)


def get_dataset_import_args(args: Optional[Dict[str, Any]] = None) -> _DATASET_IMPORT_CLS:
    parser = HfArgumentParser(_DATASET_IMPORT_ARGS)
    return _parse_args(parser, args)


def get_evaluation_args(args: Optional[Dict[str, Any]] = None) -> _EVALUATION_CLS:
    parser = HfArgumentParser(_EVALUATION_ARGS)
    return _parse_args(parser, args)


def get_report_args(args: Optional[Dict[str, Any]] = None) -> _REPORT_CLS:
    parser = HfArgumentParser(_REPORT_ARGS)
    return _parse_args(parser, args)


def get_delete_history_args(args: Optional[Dict[str, Any]] = None) -> _DELETE_HISTORY_CLS:
    parser = HfArgumentParser(_DELETE_HISTORY_ARGS)
    return _parse_args(parser, args)
