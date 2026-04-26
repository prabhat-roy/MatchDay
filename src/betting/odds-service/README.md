# odds-service

Service in the **betting** domain of MatchDay.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/odds-service/](../../../helm/charts/odds-service/) — Helm chart
- [manifests/betting/odds-service/](../../../manifests/betting/odds-service/) — Raw K8s manifests
