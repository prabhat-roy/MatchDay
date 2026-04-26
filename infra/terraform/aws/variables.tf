variable "aws_region"  { type = string  default = "us-east-1" }
variable "environment" { type = string  default = "prod" }
variable "vpc_cidr"    { type = string  default = "10.50.0.0/16" }
variable "az_count"    { type = number  default = 3 }

variable "eks_version"      { type = string  default = "1.31" }
variable "node_min"         { type = number  default = 6 }
variable "node_max"         { type = number  default = 60 }   # marquee 10x surge
variable "node_instance"    { type = string  default = "m6i.2xlarge" }
variable "gpu_node_min"     { type = number  default = 0 }
variable "gpu_node_max"     { type = number  default = 8 }
variable "gpu_node_instance"{ type = string  default = "g5.xlarge" }   # video AI / VAR

variable "rds_engine_version" { type = string  default = "16.3" }
variable "rds_instance"       { type = string  default = "db.r6g.xlarge" }
variable "rds_storage_gb"     { type = number  default = 500 }

variable "anti_doping_rds_instance" { type = string default = "db.r6g.large" }
variable "anti_doping_rds_storage_gb" { type = number default = 200 }

variable "kafka_version"         { type = string  default = "3.7.x" }
variable "kafka_broker_count"    { type = number  default = 6 }
variable "kafka_broker_instance" { type = string  default = "kafka.m5.large" }

variable "redis_node_type" { type = string  default = "cache.r6g.large" }
variable "redis_num_nodes" { type = number  default = 3 }

variable "timescale_instance" { type = string default = "db.m6i.xlarge" }   # athlete biometric time-series
