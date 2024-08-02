
METRIC_COL_MAPPING = {
    "ex": "exec_acc",
    "em": "exact_acc",
    "ves": "ves",
    "qvt": None
}


QUERY_OVERALL_PERFORMANCE = \
"""
SELECT AVG({METRIC_COL}) * 100 from DATASET_{DATASET_NAME}_EVALUATION_{EVAL_NAME} AS e JOIN DATASET_{DATASET_NAME} AS d ON e.id = d.id;
"""


QUERY_SUBSET_PERFORMANCE = \
"""
SELECT AVG({METRIC_COL}) * 100 from DATASET_{DATASET_NAME}_EVALUATION_{EVAL_NAME} AS e JOIN DATASET_{DATASET_NAME} AS d ON e.id = d.id WHERE {WHERE_CONDITION};
"""


QUERY_QVT_PERFORMANCE = \
"""
SELECT AVG(exec_acc) * 100 FROM (
    SELECT AVG(exec_acc) as exec_acc FROM DATASET_{DATASET_NAME}_EVALUATION_{EVAL_NAME} AS e DATASET_{DATASET_NAME} AS d ON e.id = d.id GROUP BY gold HAVING COUNT(d.gold) >= 2 and sum(e.exec_acc) != 0
);
"""


QUERY_DATASET_SIZE = \
"""
SELECT COUNT(*), COUNT(DISTINCT gold) FROM DATASET_{DATASET_NAME};
"""


QUERY_DATASET_SQL_KEYWORDS_DISTRIBUTION = \
"""
SELECT 
    AVG(count_query_fields), 
    AVG(count_group_by), 
    AVG(count_order_by), 
    AVG(count_limit), 
    AVG(count_join), 
    AVG(count_predicate), 
    AVG(count_aggregation), 
    AVG(count_scalar_function), 
    AVG(count_subquery), 
    AVG(count_set_operation), 
    AVG(count_math_compute), 
    AVG(count_logical_connecter), 
    AVG(count_distinct), 
    AVG(count_like), 
    AVG(count_control_flow), 
    AVG(count_window) 
FROM DATASET_{DATASET_NAME};
"""


QUERY_DATASET_DOMAIN_DISTRIBUTION = \
"""
SELECT db_domain, COUNT(*) FROM DATASET_{DATASET_NAME} GROUP BY db_domain ORDER BY db_domain;
"""


DELETE_DATASET_TABLE = \
"""
DROP TABLE IF EXISTS DATASET_{DATASET_NAME};
"""

DELETE_DATASET_INFO = \
"""
DELETE FROM __DATASET_INFO__ WHERE dataset_name = "{DATASET_NAME}";
"""


DELETE_EVALUATION_TABLE = \
"""
DROP TABLE IF EXISTS DATASET_{DATASET_NAME}_EVALUATION_{EVAL_NAME};
"""
