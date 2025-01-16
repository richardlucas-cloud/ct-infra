# outputs.tf
output "resource_group_ids" {
  value = { for k, v in module.resource_groups : k => v.resource_group_id }
}

output "resource_group_names" {
  value = { for k, v in module.resource_groups : k => v.resource_group_name }
}

output "resource_group_locations" {
  value = { for k, v in module.resource_groups : k => v.resource_group_location }
}

