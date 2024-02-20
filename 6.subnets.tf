resource "azurerm_subnet" "subnet-1" {
  name                 = "${azurerm_resource_group.rg.name}-subnet1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.v-net1.name
  address_prefixes     = var.subnet1_address_prefix

}

resource "azurerm_subnet" "subnet-2" {
  name                 = "${azurerm_resource_group.rg.name}-subnet2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.v-net1.name
  address_prefixes     = var.subnet2_address_prefix

}

resource "azurerm_subnet" "subnet-3" {
  name                 = "${azurerm_resource_group.rg.name}-subnet3"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.v-net1.name
  address_prefixes     = var.subnet3_address_prefix

}