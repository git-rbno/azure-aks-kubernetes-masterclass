terraform {
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
  /* Den virker ikke, er usikker på hvorfor
  backend "azurerm" {
    resource_group_name   = "24-02-XX-terraform-storage-rg" #Denne blev oprettet i v1.
    storage_account_name  = "terraformstate2402xx"
    container_name        = "mytfstatefiles"
    key                   = "terraform.tfstate"
  }*/
}
provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

# 3. Terraform Resource Block: Define a Random Pet Resource
resource "random_pet" "aksrandom" {

}
