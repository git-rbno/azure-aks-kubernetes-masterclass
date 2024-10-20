# Configure Azure Provider
terraform {
required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 3.0"  # Make sure there's a comma here between different key-value pairs if there are more items
    }
  }
}