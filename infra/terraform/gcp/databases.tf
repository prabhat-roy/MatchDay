resource "random_password" "pg" { length = 32 special = true }
resource "random_password" "anti_doping_pg" { length = 40 special = true }

resource "google_sql_database_instance" "postgres" {
  name             = "matchday-${var.environment}"
  region           = var.gcp_region
  database_version = "POSTGRES_16"
  settings {
    tier              = var.pg_tier
    availability_type = "REGIONAL"
    backup_configuration { enabled = true, point_in_time_recovery_enabled = true }
    ip_configuration  { ipv4_enabled = false, private_network = google_compute_network.this.id }
  }
  deletion_protection = true
}

resource "google_sql_database_instance" "anti_doping" {
  name             = "matchday-anti-doping-${var.environment}"
  region           = var.gcp_region
  database_version = "POSTGRES_16"
  encryption_key_name = google_kms_crypto_key.anti_doping.id
  settings {
    tier              = var.anti_doping_pg_tier
    availability_type = "REGIONAL"
    backup_configuration { enabled = true, point_in_time_recovery_enabled = true }
    ip_configuration  { ipv4_enabled = false, private_network = google_compute_network.this.id }
    user_labels       = { "matchday-io-siloed" = "wada" }
  }
  deletion_protection = true
}

resource "google_redis_instance" "cache" {
  name           = "matchday-${var.environment}"
  tier           = var.redis_tier
  memory_size_gb = var.redis_size_gb
  region         = var.gcp_region
  redis_version  = "REDIS_7_0"
  authorized_network = google_compute_network.this.id
  transit_encryption_mode = "SERVER_AUTHENTICATION"
}

# Pub/Sub for live event topic mirroring.
resource "google_pubsub_topic" "live_events"         { name = "match-ops.event.recorded" }
resource "google_pubsub_topic" "fantasy_score"       { name = "fantasy.score.updated" }
resource "google_pubsub_topic" "anti_doping_audit"   { name = "platform.audit.anti-doping" labels = { siloed = "wada" } }
