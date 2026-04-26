# Helm — MatchDay

Helm charts, one per service. Cloud-agnostic defaults in `values.yaml`,
overridden by `values-{aws,gcp,azure}.yaml` overlays.

Layout:
- `charts/<service>/Chart.yaml`
- `charts/<service>/values.yaml`
- `charts/<service>/values-aws.yaml`
- `charts/<service>/values-gcp.yaml`
- `charts/<service>/values-azure.yaml`
- `charts/<service>/templates/{deployment,service,serviceaccount,_helpers}`

Notable charts:
- `live-data-ingest` — high-fan-out, NATS JetStream env vars
- `watch-party` — Elixir BEAM tuning, large connection budget
- `bet-feed` — responsible-gambling sidecar required
- `anti-doping-service` — siloed namespace `matchday-anti-doping`,
  separate KMS key (Vault transit / cloud KMS).
