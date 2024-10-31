terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}


# Configure Azure Provider


provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}


# Create an Azure Resource Group
resource "azurerm_resource_group" "aks_rg2_terraform" {
  name     = "aks-rg2-terraform"
  location = "West Europe"

  tags = {
    environment = "k8sdev"
    demotag     = "refreshtest"
  }
}

data "azurerm_client_config" "current" {}

# Create the Key Vault
resource "azurerm_key_vault" "terraform_key_vault" {
  name                        = "terraform-key-vault"
  location                    = azurerm_resource_group.aks_rg2_terraform.location
  resource_group_name         = azurerm_resource_group.aks_rg2_terraform.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"

  # Access policies
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = ["Get", "List", "Set"]
    key_permissions    = ["Get", "List", "Create"]

  }

  tags = {
    environment = "k8sdev"
    demotag     = "refreshtest"
  }
}