from dataclasses import dataclass
from enum import Enum
from typing import List, Optional
import re


class Operator(Enum):
    GT = ">"
    LT = "<"
    EQ = "="
    

class Field(Enum):
    QUERY_FIELDS = "QUERY_FIELDS"
    GROUP_BY = "GROUP_BY"
    ORDER_BY = "ORDER_BY"
    LIMIT = "LIMIT"
    JOIN = "JOIN"
    PREDICATE = "PREDICATE"
    AGGREGATION = "AGGREGATION"
    SCALAR_FUNCTION = "SCALAR_FUNCTION"
    SUBQUERY = "SUBQUERY"
    SET_OPERATION = "SET_OPERATION"
    MATH_COMPUTE = "MATH_COMPUTE"
    LOGICAL_CONNECTOR = "LOGICAL_CONNECTOR"
    DISTINCT = "DISTINCT"
    LIKE = "LIKE"
    CONTROL_FLOW = "CONTROL_FLOW"
    WINDOW = "WINDOW"


@dataclass
class Filter:
    name: str
    field: Field
    operator: Operator
    value: int
    

_SCENARIO_CONNECTOR = "&&"

@dataclass
class Scenario:
    name: str
    filters: List[Filter]
    

def parse_filter(filter_name: str, filter_expression: str) -> Optional[Filter]:
    pattern = re.compile(r'^(?P<field>{})\s*(?P<op>{})\s*(?P<value>\d+)$'.format(
        '|'.join([field.value for field in Field]),
        '|'.join([op.value for op in Operator])
    ))
    match = pattern.match(filter_expression)
    if match:
        field = match.group('field')
        op = match.group('op')
        value = match.group('value')
        return Filter(
            name=filter_name,
            field=Field(field),
            operator=Operator(op),
            value=int(value)
        )
    else:
        return None


def parse_scenario(scenario_name: str, scenario_str: str) -> Optional[Scenario]:
    filter_expressions = scenario_str.split(_SCENARIO_CONNECTOR)
    filters = []
    for exp in filter_expressions:
        filter = parse_filter(exp.strip())
        if filter is None:
            return None
        else:
            filters.append(filter)
    return Scenario(name=scenario_name, filters=filters)


def map_field_to_database_col(field: Field) -> str:
    return "count_" + field.value.lower()


def serialize_filter(filter: Filter) -> str:
    return f"{map_field_to_database_col(filter.field)} {filter.operator.value} {filter.value}"


def serialize_scenario(scenario: Scenario) -> str:
    return " AND ".join([serialize_filter(filter) for filter in scenario.filters])
