output "workitemtracking_fields_id" {
  description = "Map of id values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtracking_fields_can_sort_by" {
  description = "Map of can_sort_by values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no can_sort_by are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.can_sort_by if v.can_sort_by != null }
}
output "workitemtracking_fields_description" {
  description = "Map of description values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no description are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.description if v.description != null && length(v.description) > 0 }
}
output "workitemtracking_fields_is_identity" {
  description = "Map of is_identity values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no is_identity are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_identity if v.is_identity != null }
}
output "workitemtracking_fields_is_locked" {
  description = "Map of is_locked values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no is_locked are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_locked if v.is_locked != null }
}
output "workitemtracking_fields_is_picklist" {
  description = "Map of is_picklist values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no is_picklist are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_picklist if v.is_picklist != null }
}
output "workitemtracking_fields_is_picklist_suggested" {
  description = "Map of is_picklist_suggested values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no is_picklist_suggested are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_picklist_suggested if v.is_picklist_suggested != null }
}
output "workitemtracking_fields_is_queryable" {
  description = "Map of is_queryable values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no is_queryable are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.is_queryable if v.is_queryable != null }
}
output "workitemtracking_fields_name" {
  description = "Map of name values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no name are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workitemtracking_fields_picklist_id" {
  description = "Map of picklist_id values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no picklist_id are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.picklist_id if v.picklist_id != null && length(v.picklist_id) > 0 }
}
output "workitemtracking_fields_read_only" {
  description = "Map of read_only values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no read_only are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.read_only if v.read_only != null }
}
output "workitemtracking_fields_reference_name" {
  description = "Map of reference_name values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no reference_name are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.reference_name if v.reference_name != null && length(v.reference_name) > 0 }
}
output "workitemtracking_fields_supported_operations" {
  description = "Map of supported_operations values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no supported_operations are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.supported_operations if v.supported_operations != null && length(v.supported_operations) > 0 }
}
output "workitemtracking_fields_type" {
  description = "Map of type values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no type are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.type if v.type != null && length(v.type) > 0 }
}
output "workitemtracking_fields_url" {
  description = "Map of url values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no url are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.url if v.url != null && length(v.url) > 0 }
}
output "workitemtracking_fields_usage" {
  description = "Map of usage values across all workitemtracking_fields, keyed the same as var.workitemtracking_fields except keys with no usage are omitted"
  value       = { for k, v in azuredevops_workitemtracking_field.workitemtracking_fields : k => v.usage if v.usage != null && length(v.usage) > 0 }
}

