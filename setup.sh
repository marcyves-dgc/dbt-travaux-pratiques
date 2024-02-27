#!/bin/bash
python3 -m venv dbt-env
source dbt-env/bin/activate

BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
NC='\033[0m'

echo -e "\n${BOLD_GREEN}### INSTALLING dbt ###${NC}\n"
python3 -m pip install dbt

echo -e "\n${BOLD_GREEN}### INSTALLING DBT-BIG QUERY CONNECTION ###${NC}\n"
python3 -m pip install dbt-bigquery

# Create a new project
echo -e "\n${BOLD_GREEN}### CLONING dbt PROJET PROJECT ###${NC}\n"
git clone https://github.com/dbt-labs/jaffle_shop.git

echo -e "\n${BOLD_GREEN}### SETUP COMPLETE ###${NC}\n"

echo -e "\n### PLEASE COPY-PASTE ${BOLD_RED}source dbt-env/bin/activate${NC} IN THE TERMINAL ###\n"  

echo -e "\n### THEN copy-paste ${BOLD_RED}cd jaffle_shop${NC} & then ${BOLD_RED}dbt init${NC} ###\n"
