from sqlglot import parse_one, exp


class SQLParser:
    
    _SET_KEYWORDS = (exp.Union, exp.Except, exp.Intersect)
    
    _SCALAR_KEYWORDS = (exp.Abs, exp.Length, exp.Cast, exp.Round, exp.Upper, exp.Lower, exp.Rand)
    _SCALAR_KEYWORDS_ANONYMOUS_STR = ("STRFTIME", "JULIADAY", "NOW", "INSTR", "SUBSTR")
    
    _MATH_COMPUTE_KEYWORDS = (exp.Add, exp.Sub, exp.Mul, exp.Div, exp.Mod)
    
    _LOGICAL_CONNECTER_KEYWORDS = (exp.And, exp.Or)
    
    _CONTROL_FLOW_KEYWORDS = (exp.Case)
    _CONTROL_FLOW_KEYWORDS_ANONYMOUS_STR = ("IIF")
    
    def __init__(self, sql, dialect="sqlite"):
        self.ast = parse_one(sql, dialect=dialect)
    
    @property
    def count_query_fields(self):
        _ast = self.ast
        while isinstance(_ast, self._SET_KEYWORDS):
            _ast = _ast.this
        assert isinstance(_ast, exp.Select)
        return len(_ast.expressions)
    
    @property
    def count_group_by(self):
        return len(list(self.ast.find_all(exp.Group)))
    
    @property
    def count_order_by(self):
        return len(list(self.ast.find_all(exp.Order)))
    
    @property
    def count_limit(self):
        return len(list(self.ast.find_all(exp.Limit)))
    
    @property
    def count_join(self):
        return len(list(self.ast.find_all(exp.Join)))
    
    @property
    def count_predicate(self):
        return len(list(self.ast.find_all(exp.Predicate)))
    
    @property
    def count_aggregation(self):
        return len(list(self.ast.find_all(exp.AggFunc)))
    
    @property
    def count_scalar_function(self):
        scalar_nodes = list(self.ast.find_all(self._SCALAR_KEYWORDS))
        scalar_nodes.extend([node for node in self.ast.find_all(exp.Anonymous) if node.this.upper() in self._SCALAR_KEYWORDS_ANONYMOUS_STR])
        return len(scalar_nodes)
    
    @property
    def count_subquery(self):
        return len(list(self.ast.find_all(exp.Subquery)))
    
    @property
    def count_set_operation(self):
        return len(list(self.ast.find_all(self._SET_KEYWORDS)))
    
    @property
    def count_math_compute(self):
        return len(list(self.ast.find_all(self._MATH_COMPUTE_KEYWORDS)))
    
    @property
    def count_logical_connecter(self):
        return len(list(self.ast.find_all(self._LOGICAL_CONNECTER_KEYWORDS)))
    
    @property
    def count_distinct(self):
        return len(list(self.ast.find_all(exp.Distinct)))

    @property
    def count_like(self):
        return len(list(self.ast.find_all(exp.Like)))
    
    @property
    def count_control_flow(self):
        control_flow_nodes = list(self.ast.find_all(self._CONTROL_FLOW_KEYWORDS))
        control_flow_nodes.extend([node for node in self.ast.find_all(exp.Anonymous) if node.this.upper() in self._CONTROL_FLOW_KEYWORDS_ANONYMOUS_STR])
        return len(control_flow_nodes)
    
    @property
    def count_window(self):
        return len(list(self.ast.find_all(exp.Window)))
    