#!/bin/bash

set -e #stops script if any command fails

#define Variables
WORK_DIR="$(dirname "$0")"
TF_LOG="INFO"
echo "Starting Terraform automation"
cd "$WORK_DIR"

#step 1- Initialization 
echo "initializing Terraform"
terraform init

#step2- Formatting
echo "Formatting Terraform Files"
terraform fmt -recursive 

#step3- Validation
echo "validating Terraform Configuration" 
terraform validate 

#step4- Planning
echo "Creating Terraform Plan"
terraform plan -out=tfplan

#step5- Applying Plan
echo "Applying Terraform Plan"
terraform apply -auto-approve tfplan

#step6- Terraform Output
echo "Terraform Output"
terraform output

echo "Terraform Exicution Completed Successfully"
