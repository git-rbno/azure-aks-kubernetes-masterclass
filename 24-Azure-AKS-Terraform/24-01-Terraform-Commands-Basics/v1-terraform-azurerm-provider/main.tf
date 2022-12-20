# Configure Azure Provider
provider "azurerm" {
  # Version is optional
  # Terraform recommends to pin to a specific version of provider
  #version = "=2.35.0"
  #version = "~>2.35.0"
  version = "~> 3.36.0" #recommended to use en specific version
  features {}
}



