resource "azuredevops_workitemtracking_field" "workitemtracking_fields" {
  for_each = var.workitemtracking_fields

  name                  = each.value.name
  reference_name        = each.value.reference_name
  type                  = each.value.type
  description           = each.value.description
  is_locked             = each.value.is_locked
  is_picklist_suggested = each.value.is_picklist_suggested
  picklist_id           = each.value.picklist_id
  read_only             = each.value.read_only
  restore               = each.value.restore
  usage                 = each.value.usage

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

