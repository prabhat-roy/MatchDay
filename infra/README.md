# Infra â€” MatchDay

Terraform IaC for the three target clouds. State backend per cloud.

| Cloud | Path | Purpose |
|---|---|---|
| AWS   | `terraform/aws/`   | EKS + RDS + ElastiCache + MSK + S3 + KMS + Secrets Manager |
| GCP   | `terraform/gcp/`   | GKE + CloudSQL + Memorystore + Pub/Sub + GCS + KMS |
| Azure | `terraform/azure/` | AKS + Postgres Flexible Server + Cache for Redis + Event Hubs + Storage |

A separate anti-doping silo per cloud creates the WADA-isolated
data plane (separate Postgres cluster, separate KMS key alias,
separate VPC subnets / network policy).

`modules/` holds reusable building blocks shared across clouds.
