resource "azurerm_virtual_network" "v-net1" {
  name                = "${azurerm_resource_group.rg.name}-vnet1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnet_addr_space


  tags = {
    environment = "development"
  }
}


