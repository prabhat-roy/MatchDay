variable "azure_region" { type = string  default = "westeurope" }
variable "environment"  { type = string  default = "prod" }
variable "vnet_cidr"    { type = string  default = "10.70.0.0/16" }

variable "aks_version"     { type = string  default = "1.31" }
variable "node_min"        { type = number  default = 6 }
variable "node_max"        { type = number  default = 60 }   # marquee 10x
variable "node_size"       { type = string  default = "Standard_D8s_v5" }

variable "pg_sku"          { type = string  default = "GP_Standard_D4ds_v5" }
variable "anti_doping_pg_sku" { type = string default = "GP_Standard_D2ds_v5" }
variable "redis_sku"       { type = string  default = "Premium" }
variable "redis_capacity"  { type = number  default = 1 }
