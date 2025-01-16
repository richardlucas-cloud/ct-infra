resource "azurerm_app_service_plan" "appserviceplan" {
  name                = var.appserviceplan
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  kind                = var.kind
  reserved            = var.reserved
  sku {
    tier = var.tier
    size = var.size
  }
}