

resource "azurerm_resource_group" "amit-rg" {
    for_each = var.rg_names  # This will create resource groups with names like "kavi-rg0", "chavi-rg1", etc.  
    name     = each.key  # This will create resource groups with names like "kavi-rg0", "chavi-rg1", etc.
    location = each.value  # You can change this to your desired location.
  
}


resource "azurerm_resource_group" "amit-rg2" {
    for_each = var.rg_names  # This will create resource groups with names like "kavi-rg0", "chavi-rg1", etc.  
    name     = each.key  # This will create resource groups with names like "kavi-rg0", "chavi-rg1", etc.
    location = each.value  # You can change this to your desired location.
  
}