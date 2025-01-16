resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}