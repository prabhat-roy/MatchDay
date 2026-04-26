# kpi-service

Service in the **performance** domain of MatchDay.

**Language:** Go · **Port:** 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kpi-service/](../../../helm/charts/kpi-service/) — Helm chart
- [manifests/performance/kpi-service/](../../../manifests/performance/kpi-service/) — Raw K8s manifests
