#!/bin/bash

# Install dbt
echo -e "\n### INSTALLING dbt ###\n"
pip install dbt


echo -e "\n ### INSTALLING DBT-BIG QUERY CONNECTION ###\n"
pip install dbt-bigquery

# Create a new project
echo -e "\n### CLONING dbt PROJET PROJECT ###\n"
git clone https://github.com/dbt-labs/jaffle_shop.git

echo -e "\n### SETTING UP USER PROFILE ###\n"

read -p "Sandbox name (no need to write 'sandbox' in front): " sandbox_name

read -p "Dataset name ('TP_dbt__' in front): " dataset_name

profile="
jaffle_shop:
  outputs:
    dev:
      dataset: TP_dbt__${dataset_name}
      job_execution_timeout_seconds: 300
      job_retries: 1
      location: EU
      method: oauth
      priority: interactive
      project: sandbox-${sandbox_name}
      threads: 1
      type: bigquery
  target: dev
"

echo "$profile" >> ~/.dbt/profiles.yml

echo -e "\n### SETUP COMPLETE ###\n"