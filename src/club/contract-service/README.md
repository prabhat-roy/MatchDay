# contract-service

Service in the **club** domain of MatchDay.

**Language:** Go · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-service/](../../../helm/charts/contract-service/) — Helm chart
- [manifests/club/contract-service/](../../../manifests/club/contract-service/) — Raw K8s manifests
