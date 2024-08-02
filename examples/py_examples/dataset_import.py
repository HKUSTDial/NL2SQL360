from nl2sql360.core import Core
from nl2sql360.arguments import CoreArguments, DatasetArguments

core_args = CoreArguments()

core = Core(core_args)

dataset_args = DatasetArguments(
    dataset_name="spider_dev",
    dataset_dir="../data/spider",
    samples_file="dev.json",
    database_dir="database",
    tables_file="tables.json",
    question_key="question",
    sql_key="query",
    db_id_key="db_id",
    sql_complexity_key=None,
    database_domain_file=None
)

core.import_dataset(dataset_args)


