output "latest_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}