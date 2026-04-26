output "eks_cluster_name"        { value = module.eks.cluster_name }
output "eks_cluster_endpoint"    { value = module.eks.cluster_endpoint }
output "eks_oidc_issuer"         { value = module.eks.cluster_oidc_issuer_url }
output "vpc_id"                  { value = aws_vpc.this.id }
output "private_subnets"         { value = aws_subnet.private[*].id }
output "anti_doping_subnets"     { value = aws_subnet.anti_doping[*].id }
output "postgres_endpoint"       { value = aws_db_instance.postgres.endpoint     sensitive = true }
output "anti_doping_endpoint"    { value = aws_db_instance.anti_doping.endpoint  sensitive = true }
output "timescale_endpoint"      { value = aws_db_instance.timescale.endpoint    sensitive = true }
output "redis_primary_endpoint"  { value = aws_elasticache_replication_group.redis.primary_endpoint_address }
output "kafka_bootstrap_brokers" { value = aws_msk_cluster.kafka.bootstrap_brokers_tls sensitive = true }
output "media_bucket"            { value = aws_s3_bucket.media.bucket }
output "stream_origin_bucket"    { value = aws_s3_bucket.stream_origin.bucket }
output "anti_doping_bucket"      { value = aws_s3_bucket.anti_doping.bucket }
output "kms_key_arn"             { value = aws_kms_key.matchday.arn }
output "anti_doping_kms_key_arn" { value = aws_kms_key.anti_doping.arn }
