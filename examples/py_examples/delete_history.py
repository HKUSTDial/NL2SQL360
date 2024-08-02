from nl2sql360.core import Core
from nl2sql360.arguments import CoreArguments, EvaluationArguments
from nl2sql360.filter import Filter, Scenario, Field, Operator

if __name__ == "__main__":
    core_args = CoreArguments()

    core = Core(core_args)
    
    core.delete_evaluation_history(
        dataset_name="spider_dev",
        eval_name="C3SQL"
    )
    
    core.delete_dataset_history(
        dataset_name="spider_dev",
        delete_relavant_evaluations=True
    )
    
    
    
    