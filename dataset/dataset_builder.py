import json
import os
from loguru import logger
from third_party.spider_hardness import SpiderHardnessEvaluator


class MetaDataset:
    def __init__(self, path_data):
        self.path_data = os.path.join(path_data, self.name)
        self.path_train_db = os.path.join(self.path_data, self.train_db_dir) if self.train_db_dir else None
        self.path_dev_db = os.path.join(self.path_data, self.dev_db_dir) if self.dev_db_dir else None
        self.path_test_db = os.path.join(self.path_data, self.test_db_dir) if self.test_db_dir else None
        if self.train_json:
            if isinstance(self.train_json, list):
                self.path_train_json = [os.path.join(self.path_data, _train_json) for _train_json in self.train_json]
            else:
                self.path_train_json = os.path.join(self.path_data, self.train_json)
        self.path_dev_json = os.path.join(self.path_data, self.dev_json) if self.dev_json else None
        self.path_test_json = os.path.join(self.path_data, self.test_json) if self.test_json else None
        self.path_train_gold = os.path.join(self.path_data, self.train_gold) if self.train_gold else None
        self.path_dev_gold = os.path.join(self.path_data, self.dev_gold) if self.dev_gold else None
        self.path_test_gold = os.path.join(self.path_data, self.test_gold) if self.test_gold else None
        self.path_train_tables_json = os.path.join(self.path_data, self.train_tables_json) if self.train_tables_json else None
        self.path_dev_tables_json = os.path.join(self.path_data, self.dev_tables_json) if self.dev_tables_json else None
        self.path_test_tables_json = os.path.join(self.path_data, self.test_tables_json) if self.test_tables_json else None
    
    def get_gold(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        # with open(getattr(self, f"path_{dataset_split}_gold"), "r") as f:
        #     return [self._fix_gold(line.split("\t")[0], dataset_split) for line in f.readlines()]
        data_json = self.get_data_json(dataset_split)
        return [data_json_item["query"] for data_json_item in data_json]
        
    def get_data_json(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        path_data_json = getattr(self, f"path_{dataset_split}_json")
        data_json = []
        if isinstance(path_data_json, list):
            for path in path_data_json:
                data_json.extend(json.load(open(path, "r", encoding="utf-8")))
        else:
            data_json = json.load(open(path_data_json, "r", encoding="utf-8"))
        fix_data_json = []
        for data_json_item in data_json:
            fix_data_json.append(self._fix_data_json_item(data_json_item, dataset_split))
        return fix_data_json

    def get_db_ids(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        data_json = self.get_data_json(dataset_split)
        return [item["db_id"] for item in data_json]
    
    def get_path_db_sqlites(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        data_json = self.get_data_json(dataset_split)
        return [os.path.join(getattr(self, f"path_{dataset_split}_db"), item["db_id"], f'{item["db_id"]}.sqlite') for item in data_json]
    
    def get_path_db_dir(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        return getattr(self, f"path_{dataset_split}_db")
    
    def get_path_tables_json(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        return getattr(self, f"path_{dataset_split}_tables_json")
    
    def _fix_data_json_item(self, data_json_item, dataset_split):
        return data_json_item
    
    # def _fix_gold(self, gold, dataset_split):
    #     return gold

    def get_raw_data(self, dataset_split):
        """Retrun raw data with specific structure

        Args:
            dataset_split (str): one split type must be in self.dataset_splits

            assert dataset_split in self.dataset_splits
        Returns:
            list[dict]: [dict(id, nlq, gold, db_id, hardness), ...]
        """
        
        return NotImplementedError()


class BirdDataset(MetaDataset):
    name = "bird"
    
    dataset_splits = ["train", "dev"]
    
    train_db_dir = "train/train_databases"
    train_json = "train/train.json"
    train_gold = "train/train_gold.sql"
    train_tables_json = "train/train_tables.json"
    
    dev_db_dir = "dev/dev_databases"
    dev_json = "dev/dev.json"
    dev_gold = "dev/dev.sql"
    dev_tables_json = "dev/dev_tables.json"
    
    test_db_dir = None
    test_json = None
    test_gold = None
    test_tables_json = None
    
    def _fix_data_json_item(self, data_json_item, dataset_split):
        if dataset_split == "train":
            if data_json_item["SQL"] == "SELECT max_temperature_f, date FROM weather WHERE max_temperature_f = ( SELECT MAX(max_temperature_f) FROM weather WHERE max_temperature_f IS NOT NULL AND max_temperature_f IS NOT '' )":
                data_json_item["SQL"] = "SELECT max_temperature_f, date FROM weather WHERE max_temperature_f = ( SELECT MAX(max_temperature_f) FROM weather WHERE max_temperature_f IS NOT NULL AND max_temperature_f IS NOT NULL )"
        data_json_item["query"] = data_json_item["SQL"]
        data_json_item.pop("SQL")
        return data_json_item
    
    def get_raw_data(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        data_json = self.get_data_json(dataset_split)
        raw_data = []
        logger.warning(f"Bird dataset has not db domain labels data, instead of using default <Unknown> label")
        for item_id, item in enumerate(data_json):
            raw_data.append({
                "id": item_id,
                "nlq": item["question"],
                "gold": item["query"],
                "db_id": item["db_id"],
                "hardness": item.get("difficulty", "<Unknown>"),
                "db_domain": "<Unknown>"
            })
        return raw_data


class SpiderDataset(MetaDataset):
    name = "spider"
    
    dataset_splits = ["train", "dev", "test"]
    
    train_db_dir = "database"
    train_json = ["train_spider.json", "train_others.json"]
    train_gold = "train_gold.sql"
    train_tables_json = "tables.json"
    
    dev_db_dir = "database"
    dev_json = "dev.json"
    dev_gold = "dev_gold.sql"
    dev_tables_json = "tables.json"
    
    test_db_dir = "test_database"
    test_json = "test_data/dev.json"
    test_gold = "test_data/dev_gold.sql"
    test_tables_json = "test_data/tables.json"
    
    # def _fix_gold(self, gold, dataset_split):
    #     if dataset_split == "train":
    #         if gold == 'SELECT T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id  =  T2.maintenance_contract_company_id JOIN Ref_Company_Types AS T3 ON T1.company_type_code  =  T3.company_type_code ORDER BY T2.contract_end_date DESC LIMIT 1':
    #             gold = 'SELECT T1.company_type FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id  =  T2.maintenance_contract_company_id ORDER BY T2.contract_end_date DESC LIMIT 1'
    #         if gold.startswith('SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid IN'):
    #             gold = gold.replace('IN (SELECT T2.dormid)', 'IN (SELECT T3.dormid)')
    #     return gold
        
    def _fix_data_json_item(self, data_json_item, dataset_split):
        if dataset_split == "train":
            if data_json_item['query'] == 'SELECT T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id  =  T2.maintenance_contract_company_id JOIN Ref_Company_Types AS T3 ON T1.company_type_code  =  T3.company_type_code ORDER BY T2.contract_end_date DESC LIMIT 1':
                data_json_item['query'] = 'SELECT T1.company_type FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id  =  T2.maintenance_contract_company_id ORDER BY T2.contract_end_date DESC LIMIT 1'
                data_json_item['query_toks'] = ['SELECT', 'T1.company_type', 'FROM', 'Third_Party_Companies', 'AS', 'T1', 'JOIN', 'Maintenance_Contracts', 'AS', 'T2', 'ON', 'T1.company_id', '=', 'T2.maintenance_contract_company_id', 'ORDER', 'BY', 'T2.contract_end_date', 'DESC', 'LIMIT', '1']
                data_json_item['query_toks_no_value'] =  ['select', 't1', '.', 'company_type', 'from', 'third_party_companies', 'as', 't1', 'join', 'maintenance_contracts', 'as', 't2', 'on', 't1', '.', 'company_id', '=', 't2', '.', 'maintenance_contract_company_id', 'order', 'by', 't2', '.', 'contract_end_date', 'desc', 'limit', 'value']
                data_json_item['question'] = 'What is the type of the company who concluded its contracts most recently?'
                data_json_item['question_toks'] = ['What', 'is', 'the', 'type', 'of', 'the', 'company', 'who', 'concluded', 'its', 'contracts', 'most', 'recently', '?']
            if data_json_item['query'].startswith('SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid IN'):
                data_json_item['query'] = data_json_item['query'].replace('IN (SELECT T2.dormid)', 'IN (SELECT T3.dormid)')
                index = data_json_item['query_toks'].index('(') + 2
                data_json_item['query_toks'][index] = 'T3.dormid'
                index = data_json_item['query_toks_no_value'].index('(') + 2
                data_json_item['query_toks_no_value'][index] = 't3'
        return data_json_item
    
    def get_raw_data(self, dataset_split):
        if dataset_split not in self.dataset_splits:
            logger.error(f"Dataset {self.name} does not has {dataset_split} dataset split.")
            return None
        data_json = self.get_data_json(dataset_split)
        hardness_evaluator = SpiderHardnessEvaluator(self, None, dataset_split)
        hardness_list = hardness_evaluator.evaluate()["hardness"]
        
        if os.path.exists("data/auxiliary/spider_db_domain.json"):
            db_domain_map = {item["db_id"]: item["domain"] for item in json.load(open("data/auxiliary/spider_db_domain.json", "r"))}
        else:
            db_domain_map = dict()
        
        raw_data = []
        for item_id, item in enumerate(data_json):
            if item["db_id"] not in db_domain_map.keys():
                logger.warning(f"Cannot find {item['db_id']} domain label, instead of using default <Unknown> label")
            raw_data.append({
                "id": item_id,
                "nlq": item["question"],
                "gold": item["query"],
                "db_id": item["db_id"],
                "hardness": hardness_list[item_id],
                "db_domain": db_domain_map.get(item["db_id"], "<Unknown>")
            })
        return raw_data
