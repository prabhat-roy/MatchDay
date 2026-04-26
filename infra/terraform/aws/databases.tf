# Main shared Postgres for transactional data (clubs, athletes, contracts, tickets).
resource "aws_db_subnet_group" "pg" {
  name       = "matchday-${var.environment}"
  subnet_ids = aws_subnet.private[*].id
}

resource "random_password" "pg" {
  length  = 32
  special = true
}

resource "aws_db_instance" "postgres" {
  identifier               = "matchday-${var.environment}"
  engine                   = "postgres"
  engine_version           = var.rds_engine_version
  instance_class           = var.rds_instance
  allocated_storage        = var.rds_storage_gb
  storage_encrypted        = true
  db_name                  = "matchday"
  username                 = "matchday"
  password                 = random_password.pg.result
  db_subnet_group_name     = aws_db_subnet_group.pg.name
  multi_az                 = true
  backup_retention_period  = 14
  deletion_protection      = true
  performance_insights_enabled = true
  skip_final_snapshot      = false
  final_snapshot_identifier = "matchday-${var.environment}-final"
}

# SILOED anti-doping Postgres — separate subnet group, separate KMS key.
# Never share credentials with the main cluster.
resource "aws_db_subnet_group" "anti_doping" {
  name       = "matchday-anti-doping-${var.environment}"
  subnet_ids = aws_subnet.anti_doping[*].id
  tags       = { "matchday.io/siloed" = "wada" }
}

resource "random_password" "anti_doping_pg" {
  length  = 40
  special = true
}

resource "aws_db_instance" "anti_doping" {
  identifier                   = "matchday-anti-doping-${var.environment}"
  engine                       = "postgres"
  engine_version               = var.rds_engine_version
  instance_class               = var.anti_doping_rds_instance
  allocated_storage            = var.anti_doping_rds_storage_gb
  storage_encrypted            = true
  kms_key_id                   = aws_kms_key.anti_doping.arn
  db_name                      = "anti_doping"
  username                     = "anti_doping"
  password                     = random_password.anti_doping_pg.result
  db_subnet_group_name         = aws_db_subnet_group.anti_doping.name
  multi_az                     = true
  backup_retention_period      = 35              # WADA retention
  deletion_protection          = true
  performance_insights_enabled = true
  skip_final_snapshot          = false
  final_snapshot_identifier    = "matchday-anti-doping-${var.environment}-final"
  tags                         = { "matchday.io/siloed" = "wada", "matchday.io/append-only" = "true" }
}

# TimescaleDB-compatible Postgres for biometric time-series at 25Hz.
resource "aws_db_instance" "timescale" {
  identifier                   = "matchday-timescale-${var.environment}"
  engine                       = "postgres"
  engine_version               = var.rds_engine_version
  instance_class               = var.timescale_instance
  allocated_storage            = 1000
  storage_encrypted            = true
  db_name                      = "biometric"
  username                     = "matchday"
  password                     = random_password.pg.result
  db_subnet_group_name         = aws_db_subnet_group.pg.name
  multi_az                     = true
  backup_retention_period      = 14
  deletion_protection          = true
  parameter_group_name         = "default.postgres16"
}

resource "aws_elasticache_subnet_group" "redis" {
  name       = "matchday-${var.environment}"
  subnet_ids = aws_subnet.private[*].id
}

resource "aws_elasticache_replication_group" "redis" {
  replication_group_id        = "matchday-${var.environment}"
  description                 = "MatchDay Redis — fantasy live scoring + cache + leaderboards"
  node_type                   = var.redis_node_type
  num_cache_clusters          = var.redis_num_nodes
  automatic_failover_enabled  = true
  multi_az_enabled            = true
  engine_version              = "7.1"
  port                        = 6379
  subnet_group_name           = aws_elasticache_subnet_group.redis.name
  at_rest_encryption_enabled  = true
  transit_encryption_enabled  = true
}

# MSK for Kafka — sized for marquee 10x surge.
resource "aws_msk_cluster" "kafka" {
  cluster_name           = "matchday-${var.environment}"
  kafka_version          = var.kafka_version
  number_of_broker_nodes = var.kafka_broker_count

  broker_node_group_info {
    instance_type   = var.kafka_broker_instance
    client_subnets  = aws_subnet.private[*].id
    storage_info {
      ebs_storage_info { volume_size = 2000 }
    }
  }

  encryption_info {
    encryption_in_transit {
      client_broker = "TLS"
      in_cluster    = true
    }
  }
}
