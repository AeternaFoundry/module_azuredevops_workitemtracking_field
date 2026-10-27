output "workitemtracking_fields_id" {
  description = "Map of id values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.id }
}
output "workitemtracking_fields_can_sort_by" {
  description = "Map of can_sort_by values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.can_sort_by }
}
output "workitemtracking_fields_description" {
  description = "Map of description values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.description }
}
output "workitemtracking_fields_is_identity" {
  description = "Map of is_identity values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_identity }
}
output "workitemtracking_fields_is_locked" {
  description = "Map of is_locked values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_locked }
}
output "workitemtracking_fields_is_picklist" {
  description = "Map of is_picklist values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_picklist }
}
output "workitemtracking_fields_is_picklist_suggested" {
  description = "Map of is_picklist_suggested values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_picklist_suggested }
}
output "workitemtracking_fields_is_queryable" {
  description = "Map of is_queryable values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_queryable }
}
output "workitemtracking_fields_name" {
  description = "Map of name values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.name }
}
output "workitemtracking_fields_picklist_id" {
  description = "Map of picklist_id values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.picklist_id }
}
output "workitemtracking_fields_read_only" {
  description = "Map of read_only values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.read_only }
}
output "workitemtracking_fields_reference_name" {
  description = "Map of reference_name values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.reference_name }
}
output "workitemtracking_fields_supported_operations" {
  description = "Map of supported_operations values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.supported_operations }
}
output "workitemtracking_fields_type" {
  description = "Map of type values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.type }
}
output "workitemtracking_fields_url" {
  description = "Map of url values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.url }
}
output "workitemtracking_fields_usage" {
  description = "Map of usage values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.usage }
}

