from nl2sql360.core import Core
from nl2sql360.arguments import CoreArguments, EvaluationArguments
from nl2sql360.filter import Filter, Scenario, Field, Operator

if __name__ == "__main__":
    core_args = CoreArguments()

    core = Core(core_args)
    
    filter = Filter(
        field=Field.SUBQUERY,
        operator=Operator.GT,
        value=0
    )

    print(core.query_subset_leaderboard(dataset_name="spider_dev", metric="ex", filter=filter))
