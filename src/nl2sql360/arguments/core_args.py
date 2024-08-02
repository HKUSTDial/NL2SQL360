from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, Literal


@dataclass
class CoreArguments:
    r"""
    Arguments for NL2SQL360-core.
    """
    
    core_dir: str = field(
        default="./nl2sql360",
        metadata={"help": "The directory for NL2SQL360-core storage."}
    )
    
    core_name: str = field(
        default="nl2sql360",
        metadata={"help": "The name of NL2SQL360-core"}
    )
    
    sql_dialect: str = field(
        default="sqlite",
        metadata={"help": "Specify SQL dialect (e.g., sqlite) to parse."}
    )
