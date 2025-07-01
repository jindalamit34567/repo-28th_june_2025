# Once upon a time, in the world of cloud infrastructure, there was a Terraform script.
# This script was designed to create resource groups in Azure for a team of developers.
# Each resource group had a unique name and location, making it easy to organize resources.
# With the power of variables and for_each, the script could scale to any number of resource groups.
# And so, the team managed their cloud resources efficiently, all thanks to their trusty Terraform code.

resource "azurerm_resource_group" "amit-rg" {
    for_each = var.rg_names  # This will create resource groups with names like "kavi-rg0", "chavi-rg1", etc.  
    name     = each.key  # This will create resource groups with names like "kavi-rg0", "chavi-rg1", etc.
    location = each.value  # You can change this to your desired location.
  
}