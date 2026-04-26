resource "azurerm_resource_group" "this" {
  name     = "matchday-${var.environment}"
  location = var.azure_region
  tags     = { Project = "matchday", Environment = var.environment }
}

resource "azurerm_virtual_network" "this" {
  name                = "matchday-${var.environment}"
  address_space       = [var.vnet_cidr]
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
}

resource "azurerm_subnet" "aks" {
  name                 = "aks"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.70.0.0/20"]
}

resource "azurerm_subnet" "data" {
  name                 = "data"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.70.16.0/20"]
  service_endpoints    = ["Microsoft.Storage", "Microsoft.KeyVault"]
}

# SILOED anti-doping subnet.
resource "azurerm_subnet" "anti_doping" {
  name                 = "anti-doping"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.70.32.0/22"]
  service_endpoints    = ["Microsoft.Storage", "Microsoft.KeyVault"]
}
