# azure-automation-with-ansible
Setting Up Ansible for Azure Automation
This document outlines the steps taken to install and configure Ansible along with the necessary Python Azure SDK packages to enable Azure resource automation.

# 1. Install Ansible
Ansible was installed using Python’s package manager:

bash - 
pip install ansible[azure]

This installs Ansible along with the Azure collection dependencies to allow Azure resource management.

# 2. Install Azure Ansible Collection
The Azure-specific Ansible modules are provided by the official azure.azcollection:

bash - 
ansible-galaxy collection install azure.azcollection 

Version 3.9.0 of the collection was installed, which is the latest stable release as of October 2025.

# 3. Install Python Azure SDK Packages
To handle Azure resources, Ansible depends on multiple Azure SDK libraries. These were installed inside a Python virtual environment using a consolidated requirements.txt file listing all required packages together with their versions.

Key installed packages include:

azure-common >= 1.1.28

azure-core >= 1.29.5

msrest >= 0.6.21

azure-identity >= 1.25.1

Various azure-mgmt-* packages for resource management (compute, storage, network, CDN, batch, data factory, resource health, and more) with versions mostly >= 1.0.0

microsoft-kiota-authentication-azure and msgraph-sdk for authentication and Microsoft Graph API support

# 4. Handle Beta Package Versions
Some packages such as azure-mgmt-resourcehealth and azure-mgmt-mysqlflexibleservers were available only as beta versions. These were installed by allowing pre-release versions in the requirements.

# 5. Verification
After installing Ansible, the Azure collection, and the Python SDKs, resource group creation and other Azure automation tasks using Ansible playbooks succeeded without import errors.
