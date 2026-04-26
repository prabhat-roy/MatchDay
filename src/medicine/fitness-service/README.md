# fitness-service

Service in the **medicine** domain of MatchDay.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fitness-service/](../../../helm/charts/fitness-service/) — Helm chart
- [manifests/medicine/fitness-service/](../../../manifests/medicine/fitness-service/) — Raw K8s manifests
