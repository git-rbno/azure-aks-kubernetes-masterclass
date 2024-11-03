#Denne del virker og vil sætte de nødvendige ressourcer op i Azure, så jeg kan anvende Terraform til at deploye AKS
/*terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # hvis jeg anvender 4.8 kommer der problemer
    }
    # Azure Active Directory 1.x (required for AKS and Azure AD Integration)
    azuread = {
        source  = "hashicorp/azuread"
        version = "~> 3.0"
    }
     # Random 3.x (Required to generate random names for Log Analytics Workspace)
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
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

resource "azurerm_resource_group" "rg" {
  name     = "24-02-XX-terraform-storage-rg"
  location = "West Europe"  # Specify your Azure region
}

resource "azurerm_storage_account" "storage" {
  name                     = "terraformstate2402xx"  # Must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "tfstatefiles"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}*/