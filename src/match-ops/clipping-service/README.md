# clipping-service

Service in the **match-ops** domain of MatchDay.

**Language:** Go · **Port:** 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/clipping-service/](../../../helm/charts/clipping-service/) — Helm chart
- [manifests/match-ops/clipping-service/](../../../manifests/match-ops/clipping-service/) — Raw K8s manifests
