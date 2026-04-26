resource "azurerm_key_vault" "matchday" {
  name                = "matchday-${var.environment}-kv"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
  purge_protection_enabled = true
}

resource "azurerm_key_vault" "anti_doping" {
  name                = "matchday-ad-${var.environment}-kv"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "premium"           # HSM-backed
  purge_protection_enabled = true
  tags = { "matchday.io/siloed" = "wada" }
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault_secret" "pg" {
  name         = "matchday-postgres"
  value        = jsonencode({ user = "matchday", password = random_password.pg.result })
  key_vault_id = azurerm_key_vault.matchday.id
}

resource "azurerm_key_vault_secret" "anti_doping_pg" {
  name         = "matchday-anti-doping-postgres"
  value        = jsonencode({ user = "anti_doping", password = random_password.anti_doping_pg.result })
  key_vault_id = azurerm_key_vault.anti_doping.id
}
