# referee-service

Service in the **match-ops** domain of MatchDay.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/referee-service/](../../../helm/charts/referee-service/) — Helm chart
- [manifests/match-ops/referee-service/](../../../manifests/match-ops/referee-service/) — Raw K8s manifests
