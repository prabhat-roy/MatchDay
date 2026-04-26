# transfer-service

Service in the **club** domain of MatchDay.

**Language:** Go · **Port:** 50063

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/transfer-service/](../../../helm/charts/transfer-service/) — Helm chart
- [manifests/club/transfer-service/](../../../manifests/club/transfer-service/) — Raw K8s manifests
