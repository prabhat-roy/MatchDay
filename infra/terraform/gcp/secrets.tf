resource "google_kms_key_ring" "matchday" {
  name     = "matchday-${var.environment}"
  location = var.gcp_region
}

resource "google_kms_crypto_key" "matchday" {
  name     = "matchday"
  key_ring = google_kms_key_ring.matchday.id
  rotation_period = "7776000s"
}

# SILOED key for anti-doping — separate IAM bindings.
resource "google_kms_crypto_key" "anti_doping" {
  name     = "matchday-anti-doping"
  key_ring = google_kms_key_ring.matchday.id
  rotation_period = "7776000s"
  labels   = { "matchday-io-siloed" = "wada" }
}

resource "google_secret_manager_secret" "pg" {
  secret_id = "matchday-${var.environment}-postgres"
  replication { auto {} }
}

resource "google_secret_manager_secret_version" "pg" {
  secret      = google_secret_manager_secret.pg.id
  secret_data = jsonencode({ user = "matchday", password = random_password.pg.result })
}

resource "google_secret_manager_secret" "anti_doping_pg" {
  secret_id = "matchday-${var.environment}-anti-doping-postgres"
  replication { auto {} }
  labels    = { "matchday-io-siloed" = "wada" }
}

resource "google_secret_manager_secret_version" "anti_doping_pg" {
  secret      = google_secret_manager_secret.anti_doping_pg.id
  secret_data = jsonencode({ user = "anti_doping", password = random_password.anti_doping_pg.result })
}
