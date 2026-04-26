# Internal PKI: MatchDay mTLS CA used by Istio for mesh trust.
ui = true
listener "tcp" { address = "0.0.0.0:8200" tls_disable = false }
storage "raft" { path = "/vault/data" node_id = "vault-0" }
seal "awskms" { region = "us-east-1" kms_key_id = "alias/matchday-vault-unseal" }
