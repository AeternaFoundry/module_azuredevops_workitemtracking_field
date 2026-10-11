variable "workitemtracking_fields" {
  description = <<EOT
Map of workitemtracking_fields, attributes below
Required:
    - name
    - reference_name
    - type
Optional:
    - description
    - is_locked
    - is_picklist_suggested
    - picklist_id
    - read_only
    - restore
    - usage
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                  = string
    reference_name        = string
    type                  = string
    description           = optional(string)
    is_locked             = optional(bool)
    is_picklist_suggested = optional(bool)
    picklist_id           = optional(string)
    read_only             = optional(bool)
    restore               = optional(bool)
    usage                 = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtracking_fields : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtracking_fields : (
        (length(trimspace(v.reference_name)) > 0) && (length(v.reference_name) >= 1 && length(v.reference_name) <= 128) && (!can(regex("[,;~:/\\\\*|?\"&%$!+=()[\\]{}<>\\-]", v.reference_name)))
      )
    ])
    error_message = "all of: must not be empty or only whitespace; must be between 1 and 128 characters; cannot contain the following characters: ',;~:/\\*|?\"&%$!+=()[]{}<>-'"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtracking_fields : (
        contains(["string", "integer", "dateTime", "plainText", "html", "treePath", "history", "double", "guid", "boolean", "identity"], v.type)
      )
    ])
    error_message = "must be one of: \"string\", \"integer\", \"dateTime\", \"plainText\", \"html\", \"treePath\", \"history\", \"double\", \"guid\", \"boolean\", \"identity\""
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtracking_fields : (
        v.usage == null || (contains(["none", "workItem", "workItemLink", "tree", "workItemTypeExtension"], v.usage))
      )
    ])
    error_message = "must be one of: \"none\", \"workItem\", \"workItemLink\", \"tree\", \"workItemTypeExtension\""
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtracking_fields : (
        v.picklist_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.picklist_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

