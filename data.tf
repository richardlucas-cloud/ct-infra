# Data source to reference existing resource groups
data "azurerm_resource_group" "outputrg" {
  depends_on = [module.resource_groups]
  for_each   = var.resource_groups
  name       = each.value.name
}

# Data source to reference existing storage accounts
data "azurerm_storage_account" "outputstorage" {
  depends_on          = [module.storage]
  for_each            = var.storage
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.outputrg[each.value.rg_key].name
}

/*data "azurerm_app_service_plan" "outputplan" {
  depends_on          = [module.appserviceplan]
  for_each            = var.appserviceplan
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.outputrg[each.value.rg_key].name
}*/

data "azurerm_app_service" "outputappservice" {
  depends_on          = [module.appservice]
  for_each            = var.appservice
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.outputrg[each.value.rg_key].name
}