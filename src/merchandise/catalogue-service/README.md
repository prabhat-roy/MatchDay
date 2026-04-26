# catalogue-service

Service in the **merchandise** domain of MatchDay.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/catalogue-service/](../../../helm/charts/catalogue-service/) — Helm chart
- [manifests/merchandise/catalogue-service/](../../../manifests/merchandise/catalogue-service/) — Raw K8s manifests
