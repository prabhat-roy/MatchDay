# playoff-service

Service in the **league** domain of MatchDay.

**Language:** Go · **Port:** 50043

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/playoff-service/](../../../helm/charts/playoff-service/) — Helm chart
- [manifests/league/playoff-service/](../../../manifests/league/playoff-service/) — Raw K8s manifests
