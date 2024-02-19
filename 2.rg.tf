resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
  tags = {
    batch       = var.batch
    environment = var.env
    project     = var.project

  }
}
