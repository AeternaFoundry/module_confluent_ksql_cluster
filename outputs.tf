output "ksql_clusters_id" {
  description = "Map of id values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no id are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ksql_clusters_api_version" {
  description = "Map of api_version values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no api_version are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "ksql_clusters_credential_identity" {
  description = "Map of credential_identity values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no credential_identity are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => one(v.credential_identity) if v.credential_identity != null && length(v.credential_identity) > 0 }
}
output "ksql_clusters_csu" {
  description = "Map of csu values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no csu are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.csu if v.csu != null }
}
output "ksql_clusters_display_name" {
  description = "Map of display_name values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no display_name are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ksql_clusters_environment" {
  description = "Map of environment values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no environment are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "ksql_clusters_kafka_cluster" {
  description = "Map of kafka_cluster values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no kafka_cluster are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => one(v.kafka_cluster) if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "ksql_clusters_kind" {
  description = "Map of kind values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no kind are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "ksql_clusters_resource_name" {
  description = "Map of resource_name values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no resource_name are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}
output "ksql_clusters_rest_endpoint" {
  description = "Map of rest_endpoint values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "ksql_clusters_storage" {
  description = "Map of storage values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no storage are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.storage if v.storage != null }
}
output "ksql_clusters_topic_prefix" {
  description = "Map of topic_prefix values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no topic_prefix are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.topic_prefix if v.topic_prefix != null && length(v.topic_prefix) > 0 }
}
output "ksql_clusters_use_detailed_processing_log" {
  description = "Map of use_detailed_processing_log values across all ksql_clusters, keyed the same as var.ksql_clusters except keys with no use_detailed_processing_log are omitted"
  value       = { for k, v in confluent_ksql_cluster.ksql_clusters : k => v.use_detailed_processing_log if v.use_detailed_processing_log != null }
}

