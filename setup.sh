#!/bin/bash
python3 -m venv dbt-env
source dbt-env/bin/activate

# Install dbt
echo -e "\n### INSTALLING dbt ###\n"
python3 -m pip install dbt


echo -e "\n ### INSTALLING DBT-BIG QUERY CONNECTION ###\n"
python3 -m pip install dbt-bigquery

# Create a new project
echo -e "\n### CLONING dbt PROJET PROJECT ###\n"
git clone https://github.com/dbt-labs/jaffle_shop.git

echo -e "\n### SETUP COMPLETE ###\n"
