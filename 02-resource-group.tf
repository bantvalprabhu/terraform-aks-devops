resource "azurerm_resource_group" "aks-rg" {
  name     = "rg-aks-${var.env}"
  location = var.location
}