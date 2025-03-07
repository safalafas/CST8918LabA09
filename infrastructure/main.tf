provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "chau0317-A09-RG"
  location = "canadacentral"
}

resource "azurerm_storage_account" "storage" {
  name                     = "chau0317a09storage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = 