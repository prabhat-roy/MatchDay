# highlights-service

Service in the **broadcast** domain of MatchDay.

**Language:** Go · **Port:** 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/highlights-service/](../../../helm/charts/highlights-service/) — Helm chart
- [manifests/broadcast/highlights-service/](../../../manifests/broadcast/highlights-service/) — Raw K8s manifests
