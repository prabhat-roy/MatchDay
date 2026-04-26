# fulfilment-service

Service in the **merchandise** domain of MatchDay.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fulfilment-service/](../../../helm/charts/fulfilment-service/) — Helm chart
- [manifests/merchandise/fulfilment-service/](../../../manifests/merchandise/fulfilment-service/) — Raw K8s manifests
