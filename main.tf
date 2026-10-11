resource "google_discovery_engine_schema" "discovery_engine_schemas" {
  for_each = var.discovery_engine_schemas

  data_store_id   = each.value.data_store_id
  location        = each.value.location
  schema_id       = each.value.schema_id
  deletion_policy = each.value.deletion_policy
  json_schema     = each.value.json_schema
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

