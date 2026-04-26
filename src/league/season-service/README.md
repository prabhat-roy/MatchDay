# season-service

Service in the **league** domain of MatchDay.

**Language:** Go · **Port:** 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/season-service/](../../../helm/charts/season-service/) — Helm chart
- [manifests/league/season-service/](../../../manifests/league/season-service/) — Raw K8s manifests
