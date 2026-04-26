# Default policy for MatchDay application services.
# Each service consumes its own KV path; Postgres / Redis credentials are dynamic.
path "matchday/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/matchday-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/matchday" { capabilities = ["update"] }
path "transit/decrypt/matchday" { capabilities = ["update"] }
