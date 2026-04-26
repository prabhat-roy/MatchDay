# roster-service

Service in the **club** domain of MatchDay.

**Language:** Go · **Port:** 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/roster-service/](../../../helm/charts/roster-service/) — Helm chart
- [manifests/club/roster-service/](../../../manifests/club/roster-service/) — Raw K8s manifests
