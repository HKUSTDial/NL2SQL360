import os
import re

from setuptools import find_packages, setup


def get_requires():
    with open("requirements.txt", "r", encoding="utf-8") as f:
        file_content = f.read()
        lines = [line.strip() for line in file_content.strip().split("\n") if not line.startswith("#")]
        return lines
    

def get_version():
    with open(os.path.join("src", "nl2sql360", "__init__.py"), "r", encoding="utf-8") as f:
        file_content = f.read()
        pattern = r"{}\W*=\W*\"([^\"]+)\"".format("VERSION")
        (version,) = re.findall(pattern, file_content)
        return version


def main():
    setup(
        name="nl2sql360",
        version=get_version(),
        author="boyanli",
        author_email="boyanli" "@" "hkust-gz.edu.cn",
        description="A Multi-angle NL2SQL Evaluation Framework",
        long_description=open("README.md", "r", encoding="utf-8").read(),
        long_description_content_type="text/markdown",
        keywords=["NL2SQL", "Text-to-SQL", "T2S", "SQL", "Database", "NLIDB"],
        license="MIT License",
        url="https://github.com/HKUSTDial/NL2SQL360",
        package_dir={"": "src"},
        packages=find_packages("src"),
        python_requires=">=3.8.0",
        install_requires=get_requires(),
        entry_points={"console_scripts": ["nl2sql360-cli = nl2sql360.cli:main"]},
        classifiers=[
            "Development Status :: 3 - Alpha",
            "Intended Audience :: Developers",
            "Intended Audience :: Education",
            "Intended Audience :: Science/Research",
            "License :: OSI Approved :: MIT License",
            "Operating System :: OS Independent",
            "Programming Language :: Python :: 3",
            "Programming Language :: Python :: 3.8",
            "Programming Language :: Python :: 3.9",
            "Programming Language :: Python :: 3.10",
            "Programming Language :: Python :: 3.11",
            "Topic :: Database",
            "Topic :: Scientific/Engineering :: Artificial Intelligence",
            "Topic :: Software Development :: Testing"
        ],
    )


if __name__ == "__main__":
    main()