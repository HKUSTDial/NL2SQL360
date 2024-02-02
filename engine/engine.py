from sqlalchemy import create_engine, inspect
from sqlalchemy.orm import Session
from engine.model import get_dataset_model, get_evaluation_model, Base
from engine.utils import *
from loguru import logger
from tqdm import tqdm
from sql_parse.parser import Parser


class Engine:
    
    def __init__(self, db_url):
        self.engine = create_engine(db_url)
        self.insp = inspect(self.engine)
        self.models_dict = dict()
        for table_name in self.insp.get_table_names():
            if "EVALUATION" in table_name:
                self.models_dict[table_name] = get_evaluation_model(*get_dataset_name_and_evaluation_name_from_table_name(table_name))
            else:
                self.models_dict[table_name] = get_dataset_model(get_dataset_name_from_table_name(table_name))
    
    def create_dataset_table(self, dataset_name):
        table_name = f"DATASET_{dataset_name}"
        if table_name in self.models_dict.keys():
            logger.warning(f"Table {table_name} already exists")
            return self.models_dict[table_name]
        dataset_model = get_dataset_model(dataset_name)
        self.models_dict[dataset_model.__tablename__] = dataset_model
        Base.metadata.create_all(self.engine, checkfirst=True)
        logger.success(f"Table {table_name} created")
        return dataset_model
    
    def create_evaluation_table(self, dataset_name, evaluation_name):
        table_name = f"DATASET_{dataset_name}_EVALUATION_{evaluation_name}"
        if table_name in self.models_dict.keys():
            logger.warning(f"Table {table_name} already exists!")
            return self.models_dict[table_name]
        evaluation_model = get_evaluation_model(dataset_name, evaluation_name)
        self.models_dict[evaluation_model.__tablename__] = evaluation_model
        Base.metadata.create_all(self.engine, checkfirst=True)
        logger.success(f"Table {table_name} created")
        return evaluation_model
    
    def insert_dataset_table(self, dataset_name, raw_data):
        """Insert dataset table with raw data, and parse the characters of sql

        Args:
            dataset_name (str): the dataset name
            raw_data (list[dict]): [dict(id, nlq, gold, db_id, hardness), ...]
        """
        
        table_name = f"DATASET_{dataset_name}"
        if table_name not in self.models_dict.keys():
            logger.warning(f"Table {table_name} dose not exist, it will be automatically created")
            self.create_dataset_table(dataset_name)
        with Session(self.engine) as session:
            for data in tqdm(raw_data, desc="Intert into dataset table"):
                parser = Parser(data["gold"])
                table_item = self.models_dict[table_name](
                    **data,
                    **{attr: getattr(parser, attr) for attr in dir(parser) if attr.startswith("count_")}
                )
                session.add(table_item)
            session.commit()
        logger.success(f"Inserting {len(raw_data)} samples into table {table_name} completed")
    
    def insert_evaluation_table(self, dataset_name, evaluation_name, raw_data):
        """Insert data into evaluation table and do corresponding evaluations

        Args:
            dataset_name (str): the dataset name
            evaluation_name (str): the evaluation name
            raw_data (list[dict]): [dict(id, pred), ...]
        """
        
        table_name = f"DATASET_{dataset_name}_EVALUATION_{evaluation_name}"
        if table_name not in self.models_dict.keys():
            logger.warning(f"Table {table_name} dose not exist, it will be automatically created")
            self.create_evaluation_table(dataset_name, evaluation_name)

        