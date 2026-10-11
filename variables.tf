variable "discovery_engine_schemas" {
  description = <<EOT
Map of discovery_engine_schemas, attributes below
Required:
    - data_store_id
    - location
    - schema_id
Optional:
    - deletion_policy
    - json_schema
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    data_store_id   = string
    location        = string
    schema_id       = string
    deletion_policy = optional(string)
    json_schema     = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.discovery_engine_schemas : (
        v.json_schema == null || (can(jsondecode(v.json_schema)))
      )
    ])
    error_message = "must be valid JSON"
  }
}

