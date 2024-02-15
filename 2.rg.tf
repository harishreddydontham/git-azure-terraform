resource "azurerm_resource_group" "devopsb39-1" {
  name     = "rg-1"
  location = "eastus"
}

resource "azurerm_resource_group" "devopsb39-2" {
  name     = "rg-2"
  location = "westus"
}

resource "azurerm_resource_group" "devopsb39-3" {
  name     = "rg-3"
  location = "centralindia"
}