output "discovery_engine_schemas_id" {
  description = "Map of id values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_schemas_data_store_id" {
  description = "Map of data_store_id values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no data_store_id are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.data_store_id if v.data_store_id != null && length(v.data_store_id) > 0 }
}
output "discovery_engine_schemas_deletion_policy" {
  description = "Map of deletion_policy values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no deletion_policy are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "discovery_engine_schemas_json_schema" {
  description = "Map of json_schema values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no json_schema are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.json_schema if v.json_schema != null && length(v.json_schema) > 0 }
}
output "discovery_engine_schemas_location" {
  description = "Map of location values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_schemas_name" {
  description = "Map of name values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_schemas_project" {
  description = "Map of project values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.project if v.project != null && length(v.project) > 0 }
}
output "discovery_engine_schemas_schema_id" {
  description = "Map of schema_id values across all discovery_engine_schemas, keyed the same as var.discovery_engine_schemas except keys with no schema_id are omitted"
  value       = { for k, v in google_discovery_engine_schema.discovery_engine_schemas : k => v.schema_id if v.schema_id != null && length(v.schema_id) > 0 }
}

