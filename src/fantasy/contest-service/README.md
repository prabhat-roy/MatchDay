# contest-service

Service in the **fantasy** domain of MatchDay.

**Language:** Go · **Port:** 50222

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contest-service/](../../../helm/charts/contest-service/) — Helm chart
- [manifests/fantasy/contest-service/](../../../manifests/fantasy/contest-service/) — Raw K8s manifests
