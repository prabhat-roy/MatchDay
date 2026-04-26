# SILOED policy — only the anti-doping ServiceAccount in matchday-anti-doping
# can use this transit key. All access is logged via Vault audit device.
path "matchday-anti-doping/data/anti-doping-service/*" {
  capabilities = ["read"]
}
path "database/creds/matchday-anti-doping" {
  capabilities = ["read"]
}
path "transit/encrypt/matchday-anti-doping" { capabilities = ["update"] }
path "transit/decrypt/matchday-anti-doping" { capabilities = ["update"] }
# No DELETE / UPDATE on KV — anti-doping is append-only.
