variable "ksql_clusters" {
  description = <<EOT
Map of ksql_clusters, attributes below
Required:
    - csu
    - display_name
    - credential_identity (block):
        - id (required)
    - environment (block):
        - id (required)
    - kafka_cluster (block):
        - id (required)
Optional:
    - use_detailed_processing_log
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    csu                         = number
    display_name                = string
    use_detailed_processing_log = optional(bool)
    credential_identity = object({
      id = string
    })
    environment = object({
      id = string
    })
    kafka_cluster = object({
      id = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

