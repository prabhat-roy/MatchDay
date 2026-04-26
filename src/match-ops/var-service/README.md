# var-service

Service in the **match-ops** domain of MatchDay.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/var-service/](../../../helm/charts/var-service/) — Helm chart
- [manifests/match-ops/var-service/](../../../manifests/match-ops/var-service/) — Raw K8s manifests
