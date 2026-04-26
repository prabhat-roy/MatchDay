variable "gcp_project" { type = string }
variable "gcp_region"  { type = string  default = "europe-west4" }
variable "environment" { type = string  default = "prod" }

variable "gke_version"    { type = string  default = "1.31" }
variable "node_min"       { type = number  default = 6 }
variable "node_max"       { type = number  default = 60 }    # marquee 10x
variable "node_machine"   { type = string  default = "e2-standard-8" }
variable "gpu_node_min"   { type = number  default = 0 }
variable "gpu_node_max"   { type = number  default = 8 }
variable "gpu_machine"    { type = string  default = "n1-standard-8" }

variable "pg_tier"        { type = string  default = "db-custom-4-16384" }
variable "anti_doping_pg_tier" { type = string default = "db-custom-2-8192" }
variable "redis_tier"     { type = string  default = "STANDARD_HA" }
variable "redis_size_gb"  { type = number  default = 8 }
