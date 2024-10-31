/*
# Configure Azure Provider
provider "azurerm" {
  # Version is optional
  # Terraform recommends to pin to a specific version of provide
  #version = "=2.35.0"
  #version = "~>2.35.0"
  features {}
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  default     = ""
}

variable "client_id" {
  description = "The Azure client ID"
  default     = ""
}

variable "client_secret" {
  description = "The Azure client secret"
  default     = ""
}

variable "tenant_id" {
  description = "The Azure tenant ID"
  default     = ""
}
 
# Create a Azure Resource Group
resource "azurerm_resource_group" "aks-rg2-terraform" {
  name     = "aks-rg2-terraform"
  location = "West Europe"

# Add Tags https://www.udemy.com/course/azure-kubernetes-service-with-azure-devops-and-terraform/learn/lecture/23628310#overview
  tags = {
    "environment" = "k8sdev"
    "demotag"     = "refreshtest" # ensures that if changes are done manual in azure portal 
  }

}*/

