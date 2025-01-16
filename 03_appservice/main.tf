resource "azurerm_app_service" "appservice" {
    name = var.name
    resource_group_name = var.resource_group_name
    location = var.resource_group_location
    app_service_plan_id = var.app_service_plan_id
  
}

