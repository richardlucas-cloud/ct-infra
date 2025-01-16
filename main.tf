# Create resource groups
module "resource_groups" {
  source                  = "./01_resourcegroup"
  for_each                = var.resource_groups
  resource_group_name     = each.value.name
  resource_group_location = each.value.location
}

# Create storage accounts
module "storage" {
  depends_on              = [data.azurerm_resource_group.outputrg]
  source                  = "./04_storageaccout"
  for_each                = var.storage
  storage                 = each.value.name
  resource_group_name     = data.azurerm_resource_group.outputrg[each.value.rg_key].name
  resource_group_location = data.azurerm_resource_group.outputrg[each.value.rg_key].location
}

/*# Create appserviceplan
module "appserviceplan" {
  source                  = "./02_appserviceplan"
  depends_on              = [data.azurerm_resource_group.outputrg]
  for_each                = var.appserviceplan
  appserviceplan          = each.value.name
  resource_group_name     = data.azurerm_resource_group.outputrg[each.value.rg_key].name
  resource_group_location = data.azurerm_resource_group.outputrg[each.value.rg_key].location
  reserved                = each.value.reserved
  kind                    = each.value.kind
  tier                    = each.value.tier
  size                    = each.value.size
}*/

# Create appservice
module "web" {
  source                  = "./03_appservice_static"
  depends_on              = [data.azurerm_resource_group.outputrg]
  for_each                = var.appservice
  name                    = each.value.name
  resource_group_name     = data.azurerm_resource_group.outputrg[each.value.rg_key].name
  resource_group_location = data.azurerm_resource_group.outputrg[each.value.rg_key].location
  #app_service_plan_id     = data.azurerm_app_service_plan.outputplan[each.value.plan_key].id
}