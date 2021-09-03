resource "azurerm_resource_group" "himrg1" {
  name = var.resourcegroupname
  location = var.resourcegplocation
}

resource "azurerm_storage_account" "himstorage" {
  name = var.storageaccountname
  resource_group_name = azurerm_resource_group.himrg1.name
  location = azurerm_resource_group.himrg1.location
  access_tier = var.tier 
  account_replication_type = "LRS"
  account_tier = "Standard"
}