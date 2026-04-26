# Kubernetes — MatchDay

Raw cluster-level manifests applied once per cluster.

| Path | Purpose |
|---|---|
| `namespaces/`         | One namespace per domain + siloed `matchday-anti-doping` |
| `rbac/`               | ClusterRoles for matchday workloads |
| `network-policies/`   | default-deny + DNS allow + Istio mesh allow + anti-doping silo policy |
| `resource-quotas/`    | Per-namespace quotas (10x marquee headroom for fan domains) |
| `pod-disruption-budgets/` | PDBs for marquee-critical services |
| `keda/`               | Event-driven autoscalers (Kafka lag triggers) — match-day surge |
| `velero/`             | Daily backup schedule |
