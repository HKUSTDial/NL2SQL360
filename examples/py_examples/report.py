from nl2sql360.core import Core
from nl2sql360.arguments import CoreArguments, EvaluationArguments
from nl2sql360.filter import Filter, Scenario, Field, Operator

if __name__ == "__main__":
    core_args = CoreArguments()

    core = Core(core_args)
    
    SUBQUERY_FILTER = Filter(
        name="subquery",
        field=Field.SUBQUERY,
        operator=Operator.GT,
        value=0
    )
    
    BI_SCENARIO = Scenario(
        name="BI",
        filters=[Filter('agg', Field.AGGREGATION, Operator.GT, 0), Filter('join', Field.JOIN, Operator.GT, 0)]
    )

    print(core.query_overall_leaderboard(dataset_name="spider_dev", metric="ex"))
    
    print(core.query_filter_performance(dataset_name="spider_dev", metric="ex", filter=filter, eval_name="SuperSQL"))
    
    print(core.query_filter_leaderboard(dataset_name="spider_dev", metric="ex", filter=filter))
    
    print(core.query_scenario_performance(dataset_name="spider_dev", metric="ex", eval_name="SuperSQL", scenario=BI_SCENARIO))
    
    print(core.query_scenario_leaderboard(dataset_name="spider_dev", metric="ex", scenario=BI_SCENARIO))
    
    print(core.query_dataset_domain_distribution(dataset_name="spider_dev"))
    
    print(core.generate_evaluation_report(dataset_name="spider_dev",
                                          filters=[SUBQUERY_FILTER],
                                          scenarios=[BI_SCENARIO],
                                          metrics=["ex", "em", "ves"]))
    