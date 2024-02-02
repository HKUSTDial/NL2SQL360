from sqlalchemy import Column, Integer, String, Float, ForeignKey
from sqlalchemy.orm import DeclarativeBase


class Base(DeclarativeBase):
    pass


class MetaDataset:
    
    id = Column(Integer, primary_key=True)
    nlq = Column(String, nullable=False)
    gold = Column(String, nullable=False)
    db_id = Column(String, nullable=False)
    
    """Note:
    BIRD hardness: ["simple", "moderate", "challenging"]
    Spider hardness: ["easy", "medium", "hard", "extra"]
    """
    hardness = Column(String, nullable=True, default=None)
    
    count_query_fields = Column(Integer, nullable=False)
    count_group_by = Column(Integer, nullable=False)
    count_order_by = Column(Integer, nullable=False)
    count_limit = Column(Integer, nullable=False)
    count_join = Column(Integer, nullable=False)
    count_predicate = Column(Integer, nullable=False)
    count_aggregation = Column(Integer, nullable=False)
    count_scalar_function = Column(Integer, nullable=False)
    count_subquery = Column(Integer, nullable=False)
    count_set_operation = Column(Integer, nullable=False)
    count_math_compute = Column(Integer, nullable=False)
    count_logical_connecter = Column(Integer, nullable=False)
    count_distinct = Column(Integer, nullable=False)
    count_like = Column(Integer, nullable=False)
    count_control_flow = Column(Integer, nullable=False)
    count_window = Column(Integer, nullable=False)


class MetaEvaluation:

    pred = Column(String, nullable=False)
    exec_acc = Column(Float, nullable=False)
    exact_acc = Column(Float, nullable=True, default=None)    # None for BIRD evaluation
    ves = Column(Float, nullable=False)


def get_dataset_model(dataset_name):
    return type(f"DATASET_{dataset_name}", 
                (MetaDataset, Base), 
                dict(__tablename__=f"DATASET_{dataset_name}"))


def get_evaluation_model(dataset_name, evaluation_name):        
    return type(f"DATASET_{dataset_name}_EVALUATION_{evaluation_name}", 
                (MetaEvaluation, Base),
                dict(
                    id=Column(Integer, ForeignKey(f"DATASET_{dataset_name}")), 
                    __tablename__=f"DATASET_{dataset_name}_EVALUATION_{evaluation_name}"
                    ))
