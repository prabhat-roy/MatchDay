# vip-service

Service in the **venue** domain of MatchDay.

**Language:** Go · **Port:** 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vip-service/](../../../helm/charts/vip-service/) — Helm chart
- [manifests/venue/vip-service/](../../../manifests/venue/vip-service/) — Raw K8s manifests
