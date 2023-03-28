# Create Azure AD Group in Active Directory for AKS Admins -> step 6
resource "azuread_group" "aks_administrators" {
  display_name        = "${azurerm_resource_group.aks_rg.name}-cluster-administrators"
  description = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.aks_rg.name}-cluster."
}



