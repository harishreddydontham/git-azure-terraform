resource "azurerm_storage_account" "devsecops-storage" {
  name                     = var.tfstate_storage_account
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             =  var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "development"
  }
}

