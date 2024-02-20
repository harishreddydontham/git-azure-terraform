data "azurerm_key_vault" "devsecopsb39" {
  name                = "devsecopsb39"
  resource_group_name = "testijng"
}

resource "azurerm_key_vault_secret" "password-1-ds" {
  name         = "password-1-ds"
  value        = random_password.password1.result
  key_vault_id = data.azurerm_key_vault.devsecopsb39.id
}

resource "azurerm_key_vault_secret" "password-2-ds" {
  name         = "password-2-ds"
  value        = random_password.password2.result
  key_vault_id = data.azurerm_key_vault.devsecopsb39.id
}