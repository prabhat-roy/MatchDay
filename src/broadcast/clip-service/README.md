# clip-service

Service in the **broadcast** domain of MatchDay.

**Language:** Go · **Port:** 50183

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/clip-service/](../../../helm/charts/clip-service/) — Helm chart
- [manifests/broadcast/clip-service/](../../../manifests/broadcast/clip-service/) — Raw K8s manifests
