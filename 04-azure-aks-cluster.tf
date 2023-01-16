resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "${var.aks_name}-${var.env}"
  location            = azurerm_resource_group.aks-rg.location
  resource_group_name = azurerm_resource_group.aks-rg.name
  kubernetes_version  = data.azurerm_kubernetes_service_versions.current.latest_version
  dns_prefix          = var.aks_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}