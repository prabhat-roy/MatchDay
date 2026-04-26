# fixture-service

Service in the **league** domain of MatchDay.

**Language:** Go · **Port:** 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fixture-service/](../../../helm/charts/fixture-service/) — Helm chart
- [manifests/league/fixture-service/](../../../manifests/league/fixture-service/) — Raw K8s manifests
