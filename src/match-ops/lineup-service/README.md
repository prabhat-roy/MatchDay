# lineup-service

Service in the **match-ops** domain of MatchDay.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lineup-service/](../../../helm/charts/lineup-service/) — Helm chart
- [manifests/match-ops/lineup-service/](../../../manifests/match-ops/lineup-service/) — Raw K8s manifests
