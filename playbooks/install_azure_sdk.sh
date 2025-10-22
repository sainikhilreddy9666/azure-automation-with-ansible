#!/bin/bash

# Activate your Python virtual environment
source /home/saini/ansible-azure-infra/azure-ansible-env/bin/activate

# Install all required Azure Python SDK packages for Ansible Azure automation
pip install --upgrade \
  azure-common \
  azure-mgmt-resource \
  azure-mgmt-compute \
  azure-identity \
  azure-cli-core \
  azure-mgmt-network \
  azure-mgmt-storage \
  azure-mgmt-managementgroups \
  azure-mgmt-dns

# Install or upgrade the latest Azure Ansible collection from Ansible Galaxy
ansible-galaxy collection install azure.azcollection --force

echo "All Azure SDK dependencies and Ansible Azure collection installed successfully!"

