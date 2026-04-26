# draft-service

Service in the **fantasy** domain of MatchDay.

**Language:** Go · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/draft-service/](../../../helm/charts/draft-service/) — Helm chart
- [manifests/fantasy/draft-service/](../../../manifests/fantasy/draft-service/) — Raw K8s manifests
