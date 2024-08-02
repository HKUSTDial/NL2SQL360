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
- **Multiple Metrics**: Execution Accuracy / Exact-Match Accuracy / Valid Efficiency Score / Question Variance Testing.
- **Multi-angle Performance**: Fine-grained performance (JOIN, Sub-query, etc.) / Scenario-based (Business Intelligence, etc.)

## :wrench:Installation

```bash
pip install nl2sql360
```

## :rocket:Quick Start

<details><summary>Prepare Dataset</summary>

Download NL2SQL dataset to `DATASET_DIR_PATH`. The directory structure should be like:
```

```

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