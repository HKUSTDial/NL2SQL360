from engine.engine import Engine
from dataset.dataset_builder import BirdDataset
import os

if __name__ == "__main__":
    db_url = "sqlite:///data/storage/nl2sql360.sqlite"
    engine = Engine(db_url)
    
    bird_dataset = BirdDataset("data/dataset")
    engine.create_dataset_table(bird_dataset, "dev")
    raw_data = bird_dataset.get_raw_data("dev")
    engine.insert_dataset_table(bird_dataset, "dev", raw_data)
    
    pred_files = os.listdir("data/predict/bird_dev")
    
    for pred_file in pred_files:
        with open(os.path.join("data/predict/bird_dev", pred_file), "r") as f:
            preds = [line.strip().split("\t")[0] for line in f.readlines()]
        eval_name = pred_file.split(".")[0]
        engine.insert_evaluation_table(bird_dataset, "dev", eval_name, preds)
