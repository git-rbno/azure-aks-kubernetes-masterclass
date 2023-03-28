# Documentation Reference: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/kubernetes_service_versions
# Datasource to get Latest Azure AKS latest Version
data "azurerm_kubernetes_service_versions" "current" {
  location = azurerm_resource_group.aks_rg.location
  include_preview = false
}

#Dette er for at få tenant_id med ind. -> den kaldes i både 08-output og i 07-cluster
data "azurerm_client_config" "current" {
}




