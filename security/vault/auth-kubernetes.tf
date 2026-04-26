resource "vault_auth_backend" "k8s" { type = "kubernetes" }

resource "vault_kubernetes_auth_backend_config" "k8s" {
  backend            = vault_auth_backend.k8s.path
  kubernetes_host    = var.kubernetes_host
  token_reviewer_jwt = var.reviewer_jwt
}

resource "vault_kubernetes_auth_backend_role" "matchday" {
  for_each                         = toset(var.matchday_services)
  backend                          = vault_auth_backend.k8s.path
  role_name                        = each.value
  bound_service_account_names      = [each.value]
  bound_service_account_namespaces = ["matchday-platform","matchday-identity","matchday-match-ops","matchday-fan-engagement","matchday-fantasy","matchday-betting","matchday-venue","matchday-broadcast","matchday-merchandise","matchday-academy","matchday-sponsorship","matchday-analytics","matchday-notifications","matchday-club","matchday-league","matchday-athlete","matchday-performance","matchday-medicine"]
  token_policies                   = ["matchday-app"]
  token_ttl                        = 3600
}

# SILOED — anti-doping role bound only to the anti-doping namespace.
resource "vault_kubernetes_auth_backend_role" "anti_doping" {
  backend                          = vault_auth_backend.k8s.path
  role_name                        = "anti-doping-service"
  bound_service_account_names      = ["anti-doping-service"]
  bound_service_account_namespaces = ["matchday-anti-doping"]
  token_policies                   = ["matchday-anti-doping"]
  token_ttl                        = 1800
}
