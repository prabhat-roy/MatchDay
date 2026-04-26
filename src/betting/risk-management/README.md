# risk-management

Service in the **betting** domain of MatchDay.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/risk-management/](../../../helm/charts/risk-management/) — Helm chart
- [manifests/betting/risk-management/](../../../manifests/betting/risk-management/) — Raw K8s manifests
