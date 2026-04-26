# standings-service

Service in the **league** domain of MatchDay.

**Language:** Go · **Port:** 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/standings-service/](../../../helm/charts/standings-service/) — Helm chart
- [manifests/league/standings-service/](../../../manifests/league/standings-service/) — Raw K8s manifests
