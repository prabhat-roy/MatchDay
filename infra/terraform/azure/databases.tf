resource "random_password" "pg" { length = 32, special = true }
resource "random_password" "anti_doping_pg" { length = 40, special = true }

resource "azurerm_postgresql_flexible_server" "matchday" {
  name                   = "matchday-${var.environment}"
  resource_group_name    = azurerm_resource_group.this.name
  location               = azurerm_resource_group.this.location
  version                = "16"
  delegated_subnet_id    = azurerm_subnet.data.id
  administrator_login    = "matchday"
  administrator_password = random_password.pg.result
  storage_mb             = 524288
  sku_name               = var.pg_sku
  zone                   = "1"
  high_availability { mode = "ZoneRedundant" }
  backup_retention_days  = 14
}

# SILOED anti-doping Postgres — separate flexible server.
resource "azurerm_postgresql_flexible_server" "anti_doping" {
  name                   = "matchday-anti-doping-${var.environment}"
  resource_group_name    = azurerm_resource_group.this.name
  location               = azurerm_resource_group.this.location
  version                = "16"
  delegated_subnet_id    = azurerm_subnet.anti_doping.id
  administrator_login    = "anti_doping"
  administrator_password = random_password.anti_doping_pg.result
  storage_mb             = 262144
  sku_name               = var.anti_doping_pg_sku
  zone                   = "1"
  high_availability      { mode = "ZoneRedundant" }
  backup_retention_days  = 35
  tags = { "matchday.io/siloed" = "wada", "matchday.io/append-only" = "true" }
}

resource "azurerm_redis_cache" "cache" {
  name                = "matchday-${var.environment}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  capacity            = var.redis_capacity
  family              = "P"
  sku_name            = var.redis_sku
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"
}

resource "azurerm_eventhub_namespace" "kafka" {
  name                = "matchday-${var.environment}-eh"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  sku                 = "Standard"
  capacity            = 4
}

resource "azurerm_eventhub" "live_events" {
  name                = "match-ops.event.recorded"
  namespace_name      = azurerm_eventhub_namespace.kafka.name
  resource_group_name = azurerm_resource_group.this.name
  partition_count     = 32
  message_retention   = 7
}
