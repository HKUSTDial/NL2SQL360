from ..arguments import (
    get_dataset_import_args,
    get_evaluation_args,
    get_report_args,
    get_delete_history_args
)
from ..core import Core
import pandas as pd
from loguru import logger
from pathlib import Path


def run_dataset_import():
    core_args, dataset_args = get_dataset_import_args()
    Core(core_args).import_dataset(dataset_args)


def run_evaluation():
    core_args, evaluation_args = get_evaluation_args()
    Core(core_args).evaluate(evaluation_args)


def run_report():
    core_args, report_args = get_report_args()
    report = Core(core_args).generate_evaluation_report(
        dataset_name=report_args.report_dataset,
        filters=report_args.filter,
        scenarios=report_args.scenario,
        metrics=report_args.metric,
        eval_names=report_args.report_evaluation
    )
    report.to_csv(report_args.save_path)
    logger.success(f"Save report in path `{Path(report_args.save_path).resolve()}` successfully.`")


def run_delete_history():
    core_args, delete_history_args = get_delete_history_args()
    core = Core(core_args)
    if delete_history_args.dataset_name and not delete_history_args.eval_name:
        core.delete_dataset_history(
            dataset_name=delete_history_args.dataset_name,
            delete_relavant_evaluations=delete_history_args.delete_dataset_evaluations
        )
    if delete_history_args.dataset_name and delete_history_args.eval_name:
        core.delete_evaluation_history(
            dataset_name=delete_history_args.dataset_name,
            eval_name=delete_history_args.eval_name
        )
