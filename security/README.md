# Security — MatchDay

| Path | Purpose |
|---|---|
| `vault/`         | Vault config, app policy, K8s auth, PKI for Istio |
| `keycloak/`      | Realm with fan / athlete / club staff / official roles |
| `opa/policies/`  | Admission rules + responsible-gambling-limits + anti-doping-audit + youth-data-coppa |
| `kyverno/`       | Image signing / required labels |
| `falco/`         | Runtime rules incl. anti-doping access alerts |
| `cert-manager/`  | Vault-backed cluster issuer |
| `spire/`         | SPIFFE IDs for workloads |
| `coraza-waf/`    | OWASP CRS + custom anti-bot for drops + bet-feed |
| `cosign/`, `trivy/`, `syft/` | Image signing + scanning + SBOM |

Anti-doping data plane has its own KMS key (Vault transit + cloud KMS),
its own namespace, and dedicated audit emission. Bypassing the audit
interceptor is denied by both OPA and Kyverno admission.
