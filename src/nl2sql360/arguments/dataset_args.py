from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional


@dataclass
class DatasetArguments:
    r"""
    Arguments for importing dataset.
    """
    
    dataset_name: str = field(
        metadata={"help": "The unique dataset name."}
    )
    
    dataset_dir: str = field(
        metadata={"help": "Path to the folder containing the dataset."}
    )
    
    samples_file: str = field(
        metadata={"help": "The json file containing dataset samples."}
    )
    
    database_dir: str = field(
        metadata={"help": "The directory containing databases (i.e., sqlite files)."}
    )
    
    tables_file: Optional[str] = field(
        default=None,
        metadata={"help": "The json file containing database tables (schemas)."}
    )

    question_key: str = field(
        default="question",
        metadata={"help": "The key name of NL questions in the data json file."}
    )
    
    sql_key: str = field(
        default="sql",
        metadata={"help": "The key name of SQL queries in the data json file."}
    )
    
    db_id_key: str = field(
        default="db_id",
        metadata={"help": "The key name of database id in the data json file."}
    )
    
    sql_complexity_key: Optional[str] = field(
        default=None,
        metadata={"help": "The key name of SQL complexity in the data json file."}
    )
    
    database_domain_file: str = field(
        default=None,
        metadata={"help": "The json file containing database domain classifications."}
    )
    
    def __post_init__(self):
        samples_file_path = Path(self.dataset_dir, self.samples_file)
        if not samples_file_path.exists() or not samples_file_path.is_file() or samples_file_path.suffix != ".json":
            raise ValueError("`samples_file` dose not exist or is not a valid json file.")
        
        if self.tables_file:
            tables_file_path = Path(self.dataset_dir, self.tables_file)
            if not tables_file_path.exists() or not tables_file_path.is_file() or tables_file_path.suffix != ".json":
                raise ValueError("`tables_file` dose not exist or is not a valid json file.")
        
        database_dir_path = Path(self.dataset_dir, self.database_dir)
        if not database_dir_path.exists() or not database_dir_path.is_dir():
            raise ValueError("`database_dir` dose not exist or is not a directory.")
