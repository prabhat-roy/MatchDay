resource "google_container_cluster" "this" {
  name     = "matchday-${var.environment}"
  location = var.gcp_region

  network    = google_compute_network.this.name
  subnetwork = google_compute_subnetwork.primary.name

  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "services"
  }

  workload_identity_config { workload_pool = "${var.gcp_project}.svc.id.goog" }
  release_channel          { channel = "REGULAR" }
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "default" {
  name       = "default"
  cluster    = google_container_cluster.this.name
  location   = var.gcp_region
  node_count = var.node_min
  autoscaling { min_node_count = var.node_min, max_node_count = var.node_max }
  node_config {
    machine_type    = var.node_machine
    oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    workload_metadata_config { mode = "GKE_METADATA" }
    labels = { "matchday.io/pool" = "default" }
  }
}

resource "google_container_node_pool" "gpu" {
  name       = "gpu"
  cluster    = google_container_cluster.this.name
  location   = var.gcp_region
  node_count = var.gpu_node_min
  autoscaling { min_node_count = var.gpu_node_min, max_node_count = var.gpu_node_max }
  node_config {
    machine_type = var.gpu_machine
    guest_accelerator {
      type  = "nvidia-tesla-t4"
      count = 1
    }
    workload_metadata_config { mode = "GKE_METADATA" }
    labels = { "matchday.io/pool" = "gpu" }
    taint { key = "nvidia.com/gpu", value = "true", effect = "NO_SCHEDULE" }
  }
}
