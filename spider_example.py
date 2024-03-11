from engine.engine import Engine
from dataset.dataset_builder import SpiderDataset
import os

if __name__ == "__main__":
    db_url = "sqlite:///data/storage/hypersql.sqlite"
    engine = Engine(db_url)
    
    spider_dataset = SpiderDataset("data/dataset")
    engine.create_dataset_table(spider_dataset, "dev")
    raw_data = spider_dataset.get_raw_data("dev")
    engine.insert_dataset_table(spider_dataset, "dev", raw_data)
    
    pred_files = os.listdir("data/predict/spider_dev")
    
    for pred_file in pred_files:
        with open(os.path.join("data/predict/spider", pred_file), "r") as f:
            preds = [line.strip().split("\t")[0] for line in f.readlines()]
        eval_name = pred_file.split(".")[0]
        engine.insert_evaluation_table(spider_dataset, "dev", eval_name, preds)
