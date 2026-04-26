# Terraform

```
infra/terraform/
├── aws/      EKS, RDS, ElastiCache, MSK, S3, KMS, Secrets Manager + anti-doping silo
├── gcp/      GKE, CloudSQL, Memorystore, Pub/Sub, GCS, KMS + anti-doping silo
├── azure/    AKS, Postgres FS, Redis, Event Hubs, Storage, Key Vault + anti-doping silo
└── modules/  Reusable building blocks
```

Run with:
```bash
cd infra/terraform/<cloud>
terraform init -backend-config=backend.hcl
terraform plan -var-file=prod.tfvars
terraform apply -var-file=prod.tfvars
```
