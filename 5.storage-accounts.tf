
resource "azurerm_storage_account" "devsecops-storage" {
  name                     = var.tfstate_storage_account
  location                 = "eastus"
  resource_group_name      = "testijng"
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "development"
  }
}


