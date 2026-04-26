resource "google_compute_network" "this" {
  name                    = "matchday-${var.environment}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "primary" {
  name          = "matchday-${var.environment}-primary"
  ip_cidr_range = "10.60.0.0/20"
  region        = var.gcp_region
  network       = google_compute_network.this.id
  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = "10.61.0.0/16"
  }
  secondary_ip_range {
    range_name    = "services"
    ip_cidr_range = "10.62.0.0/20"
  }
}

# Anti-doping silo subnet — separate firewall scope.
resource "google_compute_subnetwork" "anti_doping" {
  name          = "matchday-${var.environment}-anti-doping"
  ip_cidr_range = "10.63.0.0/22"
  region        = var.gcp_region
  network       = google_compute_network.this.id
}
