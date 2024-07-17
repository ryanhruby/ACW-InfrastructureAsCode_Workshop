locals {
    storageAccountNameFull = "${var.storageAccountBase}${var.uniqueIdentifier}${var.environment}"
}

resource "azurerm_storage_account" "stgAcctEnv" {
    name = local.storageAccountNameFull
    resource_group_name = var.resourceGroupName
    location = var.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}