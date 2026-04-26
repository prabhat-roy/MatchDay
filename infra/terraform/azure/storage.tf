resource "azurerm_storage_account" "media" {
  name                     = "matchdaymedia${var.environment}"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"
  min_tls_version          = "TLS1_2"
  blob_properties { versioning_enabled = true }
}

resource "azurerm_storage_account" "anti_doping" {
  name                     = "matchdayadoping${var.environment}"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"
  min_tls_version          = "TLS1_2"
  blob_properties { versioning_enabled = true }
  tags = { "matchday.io/siloed" = "wada" }
}
