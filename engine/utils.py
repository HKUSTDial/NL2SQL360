

def get_dataset_name_from_table_name(dataset_table_name):
    return dataset_table_name.split("DATASET_")[1]


def get_dataset_name_and_evaluation_name_from_table_name(evaluation_table_name):
    splits = evaluation_table_name.split("_EVALUATION_")
    dataset_name = splits[0].split("DATASET_")[-1]
    evaluation_name = splits[1]
    return dataset_name, evaluation_name