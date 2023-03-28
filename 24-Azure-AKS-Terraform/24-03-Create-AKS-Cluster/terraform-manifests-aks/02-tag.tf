# Use a map variable to perform lookup against a valid set of values.
# Locals will be used to collapse the map into a single command
# that can configure multiple tags in a resource without the 
# need to explicitly manage multiple tags in all resources.
locals {
  common_tags = {
    environment = var.environment
    contact     = var.contact
    costCenter  = var.costCentre
    usage       = var.usage
    CreatedDate = timestamp()
  }

  # Usage - tags = merge(local.common_tags) in resources.
}