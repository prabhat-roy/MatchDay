resource "azurerm_kubernetes_cluster" "this" {
  name                = "matchday-${var.environment}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  dns_prefix          = "matchday-${var.environment}"
  kubernetes_version  = var.aks_version

  default_node_pool {
    name                 = "default"
    vm_size              = var.node_size
    vnet_subnet_id       = azurerm_subnet.aks.id
    enable_auto_scaling  = true
    min_count            = var.node_min
    max_count            = var.node_max
    node_labels          = { "matchday.io/pool" = "default" }
  }

  identity { type = "SystemAssigned" }
  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  network_profile {
    network_plugin    = "azure"
    network_policy    = "cilium"
    load_balancer_sku = "standard"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "gpu" {
  name                  = "gpu"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  vm_size               = "Standard_NC6s_v3"
  enable_auto_scaling   = true
  min_count             = 0
  max_count             = 8
  node_labels           = { "matchday.io/pool" = "gpu" }
  node_taints           = ["nvidia.com/gpu=true:NoSchedule"]
}
