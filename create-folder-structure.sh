#!/bin/bash

# Create module directories
MODULES=("network" "keyvault" "storage" "compute" "sql" "loadbalancer" "frontdoor")
for mod in "${MODULES[@]}"; do
  mkdir -p modules/$mod
  touch modules/$mod/main.tf modules/$mod/variables.tf modules/$mod/outputs.tf
done

# Create environments and standard tf files
ENVIRONMENTS=("dev" "uat" "prod")
for env in "${ENVIRONMENTS[@]}"; do
  mkdir -p environments/$env
  touch environments/$env/main.tf environments/$env/variables.tf environments/$env/outputs.tf
done

# Create shared configuration folder
mkdir -p shared
touch shared/provider.tf shared/backend.tf

echo "Terraform folder structure created."
