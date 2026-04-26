# loyalty-service

Service in the **fan-engagement** domain of MatchDay.

**Language:** Go · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/loyalty-service/](../../../helm/charts/loyalty-service/) — Helm chart
- [manifests/fan-engagement/loyalty-service/](../../../manifests/fan-engagement/loyalty-service/) — Raw K8s manifests
