resource "azurerm_resource_group" "cm_rg" {
    name = var.resourceGroupName
    location = var.location
}

module "stgAccount" {
    source = "./modules"

    resourceGroupName     = var.resourceGroupName
    location              = var.location
}