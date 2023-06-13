resource "azurerm_resource_group" "example" {
  name     = "example-resources1"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network1"
  address_space       = ["11.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "subnet3"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["11.0.2.0/24"]
}

resource "azurerm_network_interface" "example" {
  name                = "backend-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "subnet2"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}