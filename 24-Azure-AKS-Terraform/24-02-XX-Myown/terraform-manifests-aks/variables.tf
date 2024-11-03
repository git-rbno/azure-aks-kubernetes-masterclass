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

# https://www.terraform.io/docs/configuration/variables.html
# Input Variables
# Output Values
# Local Values (Optional)

# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "West Europe"
}

# Azure Resource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "24-02-XX-terraform-storage-rg"
}

# Azure AKS Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "dev"
}
