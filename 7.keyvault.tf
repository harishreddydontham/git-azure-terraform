data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "devsecopsb39" {
  name                        = "devsecopsb39"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id


    secret_permissions = [
      "Get",
      "Backup",
      "Delete",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Set"

    ]
  }
}

resource "azurerm_key_vault_secret" "password-1" {
  name         = "password-1"
  value        = random_password.password1.result
  key_vault_id = azurerm_key_vault.devsecopsb39.id
}
resource "azurerm_key_vault_secret" "password-2" {
  name         = "password-2"
  value        = random_password.password2.result
  key_vault_id = azurerm_key_vault.devsecopsb39.id
}
resource "azurerm_key_vault_secret" "password-3" {
  name         = "password-3"
  value        = random_password.password3.result
  key_vault_id = azurerm_key_vault.devsecopsb39.id
}

resource "azurerm_key_vault_access_policy" "devsecopsb39-sp-access" {
  key_vault_id = azurerm_key_vault.devsecopsb39.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  secret_permissions = [
      "Get",
      "Backup",
      "Delete",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Set"

    ]
}