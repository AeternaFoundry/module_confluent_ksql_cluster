resource "confluent_ksql_cluster" "ksql_clusters" {
  for_each = var.ksql_clusters

  csu                         = each.value.csu
  display_name                = each.value.display_name
  use_detailed_processing_log = each.value.use_detailed_processing_log

  credential_identity {
    id = each.value.credential_identity.id
  }

  environment {
    id = each.value.environment.id
  }

  kafka_cluster {
    id = each.value.kafka_cluster.id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

