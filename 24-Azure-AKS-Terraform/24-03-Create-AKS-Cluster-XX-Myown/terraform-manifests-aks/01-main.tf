# We will define 
# 1. Terraform Settings Block
# 1. Required Version Terraform
# 2. Required Terraform Providers
# 3. Terraform Remote State Storage with Azure Storage Account (last step of this section)
# 2. Terraform Provider Block for AzureRM
# 3. Terraform Resource Block: Define a Random Pet Resource

# 1. Terraform Settings Block
terraform {
  # 1. Required Version Terraform
  required_version = ">= 1.0"
  # 2. Required Terraform Providers  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  } #denne skulle have været oprettet - hvis den skulle benyttes.
  backend "azurerm" {
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "terraformstateazureaks"
    container_name        = "tfstatefiles"
    key                   = "dev.terraform.tfstate"
  }  

}
# 2. Terraform Provider Block for AzureRM
provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "azuread" {
  client_id       = var.client_id       # or your client_id directly azuread is used by Azure AD
  client_secret   = var.client_secret   # or your client_secret directly
  tenant_id       = var.tenant_id       # or your tenant_id directly
}

resource "azurerm_resource_group" "rg" {
  name     = "24-03-XX-terraform-storage-rg"
  location = "West Europe"  # Specify your Azure region
}

resource "azurerm_storage_account" "storage" {
  name                     = "terraformstate2403xx"  # Must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "tfstatefiles"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

# 3. Terraform Resource Block: Define a Random Pet Resource
resource "random_pet" "aksrandom" {

}


