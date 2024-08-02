# :mag_right:NL2SQL360

<div align="center"><img width="25%" src="./assets/nl2sql360.png"><img width="75%" src="./assets/leaderboard.png"></div>

## :dizzy:Overview

**NL2SQL360** is a testbed for fine-grained evaluation of NL2SQL solutions. Our testbed integrates existing NL2SQL benchmarks, a repository of NL2SQL models, and various evaluation metrics, which aims to provide an intuitive and user-friendly platform to enable both standard and customized performance evaluations. Users can utilize **NL2SQL360** to assess different NL2SQL methods against established benchmarks or tailor their evaluations based on specific criteria. This flexibility allows for testing solutions in specific data domains or analyzing performance on different characteristics of SQL queries. 

In addition, we propose **SuperSQL**, which achieves competitive performance with execution accuracy of **87%** and **62.66%** on the Spider and BIRD test sets, respectively.

## :tada:News

[24/7/30] We have refactored the code for **NL2SQL360** in [`refactor`](https://github.com/BugMaker-Boyan/NL2SQL360/tree/refactor) branch and released the official python package([nl2sql360 · PyPI](https://pypi.org/project/nl2sql360)). **Stay tuned for the complete documents!**

[24/6/30] Our paper [The Dawn of Natural Language to SQL: Are We Fully Ready?](https://arxiv.org/abs/2406.01265) has been accepted by VLDB'24.

## :balloon:Features

- **Easy-to-use Evaluation**: Command Line Usage / Python Code Usage.
- **Integrated Metrics**: Execution Accuracy / Exact-Match Accuracy / Valid Efficiency Score / Question Variance Testing.
- **Multi-angle Performance**: Fine-grained performance (JOIN, Sub-query, etc.) / Scenario-based (Business Intelligence, etc.)

## :wrench:Installation

```bash
pip install nl2sql360
```

## :rocket:Quick Start

<details><summary>Prepare Dataset</summary>

Download NL2SQL dataset to `DATASET_DIR_PATH`. The directory structure should be like:
```bash
DATASET_DIR_PATH:
├─database
│  ├─academic
│  │  ├─academic.sqlite
│  ├─college
│  │  ├─college.sqlite
├─dev.json
├─tables.json
```

- `database` directory contains multiple subdirectories, which include the corresponding `sqlite` database file.
- `dev.json` is the samples file in JSON format, which at least contains three keys for `NL Question`, `Gold SQL`, `Databae Id`. You can also add the key for `Sample Complexity` for categorizing samples into different difficulty levels.
- `tables.json` contains all database schema, following [Spider Preprocess Procedure](https://github.com/taoyds/spider/tree/master/preprocess). **You can also ignore this file if you do not want to evaluate Exact-Match Accuracy Metic.**
- Note that the name for `database` directory, samples file `dev.json` and tables file `tables.json` can be changed.

</details>



<details><summary>Import Dataset into NL2SQL360</summary>

- CLI Usage:

  - Create / Modify the YAML configuration following [NL2SQL360/examples/cli_examples/dataset_spider.yaml](https://github.com/BugMaker-Boyan/NL2SQL360/blob/refactor/examples/cli_examples/dataset_spider.yaml).

  - Save the YAML file to the path `DATASET_YAML_PATH`. Then run the command line:

    ```bash
    nl2sql360 dataset DATASET_YAML_PATH
    ```

- Code Usage:

  - Create / Modify Python File following [NL2SQL360/examples/py_examples/dataset_import.py](https://github.com/BugMaker-Boyan/NL2SQL360/blob/refactor/examples/py_examples/dataset_import.py).
  - Run the python file to import dataset.

</details>



<details><summary>Evaluation NL2SQL Model</summary>

- CLI Usage:
  - Create / Modify the YAML configuration following [NL2SQL360/examples/cli_examples/dataset_spider.yaml](https://github.com/BugMaker-Boyan/NL2SQL360/blob/refactor/examples/cli_examples/dataset_spider.yaml).
- Code Usage:

</details>

## :bulb:Documents

**Stay Tuned!**

## :dart:Road Map

:white_check_mark:Release **NL2SQL360** evaluation code.

:white_check_mark:Release **NL2SQL360** experiments data.

:clock10:Release **NL2SQL360** Documents.

## :pushpin:Citation

```
@misc{li2024dawn,
      title={The Dawn of Natural Language to SQL: Are We Fully Ready?}, 
      author={Boyan Li and Yuyu Luo and Chengliang Chai and Guoliang Li and Nan Tang},
      year={2024},
      eprint={2406.01265},
      archivePrefix={arXiv},
      primaryClass={id='cs.DB' full_name='Databases' is_active=True alt_name=None in_archive='cs' is_general=False description='Covers database management, datamining, and data processing. Roughly includes material in ACM Subject Classes E.2, E.5, H.0, H.2, and J.1.'}
}
```