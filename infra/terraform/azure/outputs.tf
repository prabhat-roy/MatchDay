output "aks_cluster_name"   { value = azurerm_kubernetes_cluster.this.name }
output "aks_oidc_issuer"    { value = azurerm_kubernetes_cluster.this.oidc_issuer_url }
output "postgres_fqdn"      { value = azurerm_postgresql_flexible_server.matchday.fqdn  sensitive = true }
output "anti_doping_fqdn"   { value = azurerm_postgresql_flexible_server.anti_doping.fqdn sensitive = true }
output "redis_hostname"     { value = azurerm_redis_cache.cache.hostname }
output "eventhub_namespace" { value = azurerm_eventhub_namespace.kafka.name }
output "media_account"      { value = azurerm_storage_account.media.name }
output "anti_doping_account"{ value = azurerm_storage_account.anti_doping.name }
