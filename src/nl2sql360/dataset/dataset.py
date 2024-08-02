from loguru import logger
import os
from ..arguments import DatasetArguments
import json


class NL2SQLDataset:
    
    def __init__(self, dataset_args: "DatasetArguments") -> None:
        self.dataset_args = dataset_args
        
    def get_all_samples(self):
        with open(os.path.join(self.dataset_args.dataset_dir, self.dataset_args.samples_file), "r", encoding="utf-8") as f:
            samples = json.load(f)
            return samples
        
    def get_all_questions(self):
        return [item[self.dataset_args.question_key] for item in self.get_all_samples()]
    
    def get_all_sqls(self):
        return [item[self.dataset_args.sql_key] for item in self.get_all_samples()]
    
    def get_all_db_ids(self):
        return [item[self.dataset_args.db_id_key] for item in self.get_all_samples()]

    def get_all_sql_complexity(self):
        if self.dataset_args.sql_complexity_key is not None:
            return [item[self.dataset_args.sql_complexity_key] for item in self.get_all_samples()]
        else:
            return ["<UNK>" for _ in self.get_all_samples()]

    def get_all_database_domains(self):
        if self.dataset_args.database_domain_file is not None:
            with open(os.path.join(self.dataset_args.dataset_dir, self.dataset_args.database_domain_file), "r", encoding="utf-8") as f:
                domain_mapping = json.load(f)
        else:
            domain_mapping = dict()
        return [domain_mapping.get(item[self.dataset_args.db_id_key], "<UNK>") for item in self.get_all_samples()]
    
    def get_all_database_paths(self):
        return [os.path.join(self.dataset_args.dataset_dir, 
                             self.dataset_args.database_dir, 
                             item[self.dataset_args.db_id_key],
                             f"{item[self.dataset_args.db_id_key]}.sqlite"
                             ) for item in self.get_all_samples()]
    
    def get_tables(self):
        if self.dataset_args.tables_file is None:
            return ValueError("`tables_file` dose not exist or is not a valid json file.")
        else:
            with open(os.path.join(self.dataset_args.dataset_dir, self.dataset_args.tables_file), "r", encoding="utf-8") as f:
                return json.load(f)
    
    def __len__(self):
        return len(self.get_all_samples())

