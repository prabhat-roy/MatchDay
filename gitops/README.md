# GitOps — MatchDay

| Path | Purpose |
|---|---|
| `argocd/app-of-apps.yaml`           | root ArgoCD application |
| `argocd/projects/matchday.yaml`     | project allowlist |
| `argocd/applicationsets/*.yaml`     | per-cloud ApplicationSets (auto-discover charts) |
| `argo-rollouts/analysis-template.yaml`  | Prometheus-driven success-rate / p99 analysis |
| `argo-rollouts/rollouts/*.yaml`     | per-service Rollout objects (canary default) |
| `argo-rollouts/blue-green/*.yaml`   | blue/green for ticketing & betting on match days |
| `argo-workflows/*.yaml`             | CI / domain-deploy workflow templates |
| `argo-events/*.yaml`                | GitHub webhook source + sensor |
| `flux/*.yaml`                       | alternative Flux source + HelmRelease |
