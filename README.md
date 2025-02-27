# MS-Azure-aa20-ConnectivityLab-cleanup
To cleanup existing/not in use resources from old landing zone in test environment

To ignore large files:
git filter-branch -f --index-filter 'git rm --cached -r --ignore-unmatch .terraform/'

provider.tf file--This file specifies the Azure provider for Terraform.
create_bucket.tf--This file will create:
A resource group named terraform-state-rg.
A storage account with a unique name.
A storage container named tfstate within the storage account.
backend.tf--This file configures Terraform to use the Azure storage account and container we created for storing the state file.
backend.tfvars--too store the variables for the backend configuration.
terraform.tfvars-- to define the variable values.--Replace your-resource-group-name with the actual name of your resource group.
variables.tf--This file defines the variables for the number of VMs, location, resource group name, and VM size
outputs.tf--This file will output the IDs of the created VMs.