resource "aws_kms_key" "matchday" {
  description             = "MatchDay ${var.environment} general KMS key"
  deletion_window_in_days = 30
  enable_key_rotation     = true
}

resource "aws_kms_alias" "matchday" {
  name          = "alias/matchday-${var.environment}"
  target_key_id = aws_kms_key.matchday.id
}

# SILOED key for anti-doping data. Different IAM principals can use this key.
resource "aws_kms_key" "anti_doping" {
  description             = "MatchDay ${var.environment} ANTI-DOPING KMS key (WADA siloed)"
  deletion_window_in_days = 30
  enable_key_rotation     = true
  tags                    = { "matchday.io/siloed" = "wada" }
}

resource "aws_kms_alias" "anti_doping" {
  name          = "alias/matchday-anti-doping-${var.environment}"
  target_key_id = aws_kms_key.anti_doping.id
}

resource "aws_kms_key" "vault_unseal" {
  description             = "Vault auto-unseal key"
  enable_key_rotation     = true
  deletion_window_in_days = 30
}

resource "aws_kms_alias" "vault_unseal" {
  name          = "alias/matchday-vault-unseal"
  target_key_id = aws_kms_key.vault_unseal.id
}

resource "aws_secretsmanager_secret" "pg" {
  name       = "matchday/${var.environment}/postgres"
  kms_key_id = aws_kms_key.matchday.arn
}

resource "aws_secretsmanager_secret_version" "pg" {
  secret_id = aws_secretsmanager_secret.pg.id
  secret_string = jsonencode({
    username = aws_db_instance.postgres.username
    password = random_password.pg.result
    host     = aws_db_instance.postgres.address
    port     = aws_db_instance.postgres.port
    dbname   = aws_db_instance.postgres.db_name
  })
}

resource "aws_secretsmanager_secret" "anti_doping_pg" {
  name       = "matchday/${var.environment}/anti-doping-postgres"
  kms_key_id = aws_kms_key.anti_doping.arn
  tags       = { "matchday.io/siloed" = "wada" }
}

resource "aws_secretsmanager_secret_version" "anti_doping_pg" {
  secret_id = aws_secretsmanager_secret.anti_doping_pg.id
  secret_string = jsonencode({
    username = aws_db_instance.anti_doping.username
    password = random_password.anti_doping_pg.result
    host     = aws_db_instance.anti_doping.address
    port     = aws_db_instance.anti_doping.port
    dbname   = aws_db_instance.anti_doping.db_name
  })
}
