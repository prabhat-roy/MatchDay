terraform {
  required_version = ">= 1.9.0"
  required_providers {
    google      = { source = "hashicorp/google",      version = "~> 6.0" }
    google-beta = { source = "hashicorp/google-beta", version = "~> 6.0" }
    kubernetes  = { source = "hashicorp/kubernetes",  version = "~> 2.32" }
    random      = { source = "hashicorp/random",      version = "~> 3.6" }
  }
  backend "gcs" {
    bucket = "matchday-tfstate-gcp"
    prefix = "matchday/gcp"
  }
}

provider "google"      { project = var.gcp_project, region = var.gcp_region }
provider "google-beta" { project = var.gcp_project, region = var.gcp_region }
