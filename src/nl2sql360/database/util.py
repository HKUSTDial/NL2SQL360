from typing import Optional, Dict, Any
from sqlalchemy import Engine
from sqlalchemy.orm import Session
from .model import DatasetInfo, MetaDataset, get_dataset_model



def get_dataset_name_from_table_name(dataset_table_name: str) -> str:
    return dataset_table_name.split("DATASET_")[1]


def get_dataset_name_and_evaluation_name_from_table_name(evaluation_table_name: str) -> str:
    splits = evaluation_table_name.split("_EVALUATION_")
    dataset_name = splits[0].split("DATASET_")[-1]
    evaluation_name = splits[1]
    return dataset_name, evaluation_name
 

def get_dataset_info(db_engine: "Engine", dataset_name: str) -> Optional[DatasetInfo]:
    with Session(db_engine) as session:
        query_res = session.query(DatasetInfo).filter(DatasetInfo.dataset_name == dataset_name).all()
    if query_res:
        assert len(query_res) == 1
        return query_res[0]
    else:
        return None
    

def get_dataset_samples(db_engine: "Engine", dataset_model: "MetaDataset") -> Optional[Dict]:
    with Session(db_engine) as session:
        query_res = session.query(dataset_model).order_by(dataset_model.id)
    
    return [{
        "nlq": record.nlq,
        "gold": record.gold,
        "db_id": record.db_id,
        } for record in query_res]

