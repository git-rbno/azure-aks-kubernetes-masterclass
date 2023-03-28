# Terraform Resource to Create Azure Resource Group with Input Variables defined in variables.tf
# tilføjer environment navnet til resource gruppen.
resource "azurerm_resource_group" "aks_rg" {
  name = "${var.resource_group_name}-${var.environment}"
  location = var.location
  
  #nye informationer https://github.com/johnmart82/BlogPosts/blob/master/TerraformTimestamp/main.tf
  tags = merge(local.common_tags)

  lifecycle {
    ignore_changes = [
      tags["CreatedDate"]
    ]


  }
}


