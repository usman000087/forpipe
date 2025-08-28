resource "azurerm_storage_account" "stg" {
  name = var.storage_account.name
  location = var.storage_account.location
  resource_group_name = var.storage_account.resource_group_name
  account_tier             = var.storage_account.account_tier
  account_replication_type = var.storage_account.account_replication_type
}