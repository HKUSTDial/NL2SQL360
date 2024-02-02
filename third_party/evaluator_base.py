

class EvaluatorBase:
    
    def __init__(self, golds, preds, db_paths):
        self.golds = golds
        self.preds = preds
        self.db_paths = db_paths
    
    @property
    def metric_names(self):
        pass
    
    def evaluate(self):
        """Evaluate
        
        Return dict(metric_name=list(), ...)
        """
        pass
