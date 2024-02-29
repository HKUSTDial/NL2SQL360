

class EvaluatorBase:
    
    metric_names = []
    
    def __init__(self, dataset, preds, dataset_split):
        self.dataset = dataset
        self.preds = preds
        self.dataset_split = dataset_split
    
    def evaluate(self):
        """Evaluate
        
        Return dict(metric_name=list(), ...)
        """
        pass
