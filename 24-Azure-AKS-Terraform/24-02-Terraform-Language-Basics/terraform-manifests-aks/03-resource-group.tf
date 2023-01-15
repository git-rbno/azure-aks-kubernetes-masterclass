# Terraform Resource to Create Azure Resource Group with Input Variables defined in variables.tf

resource "azurerm_resource_group" "aks_rg" {
  name = "${var.resource_group_name}-${var.environment}" #grunden til at {} anvendes er blot for at kunne skrive to variabler ind.
  location = var.location
  
}


