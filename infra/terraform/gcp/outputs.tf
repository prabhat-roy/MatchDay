output "gke_cluster_name"     { value = google_container_cluster.this.name }
output "gke_endpoint"         { value = google_container_cluster.this.endpoint sensitive = true }
output "postgres_connection"  { value = google_sql_database_instance.postgres.connection_name sensitive = true }
output "anti_doping_connection" { value = google_sql_database_instance.anti_doping.connection_name sensitive = true }
output "redis_host"           { value = google_redis_instance.cache.host }
output "media_bucket"         { value = google_storage_bucket.media.name }
output "anti_doping_bucket"   { value = google_storage_bucket.anti_doping.name }
