resource "google_storage_bucket" "media" {
  name     = "matchday-${var.environment}-media"
  location = var.gcp_region
  uniform_bucket_level_access = true
  versioning { enabled = true }
  encryption { default_kms_key_name = google_kms_crypto_key.matchday.id }
}

resource "google_storage_bucket" "anti_doping" {
  name     = "matchday-${var.environment}-anti-doping"
  location = var.gcp_region
  uniform_bucket_level_access = true
  versioning { enabled = true }
  encryption { default_kms_key_name = google_kms_crypto_key.anti_doping.id }
  labels   = { "matchday-io-siloed" = "wada" }
}
