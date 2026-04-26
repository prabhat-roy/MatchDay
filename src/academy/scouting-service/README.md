# scouting-service

Service in the **academy** domain of MatchDay.

**Language:** Go · **Port:** 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scouting-service/](../../../helm/charts/scouting-service/) — Helm chart
- [manifests/academy/scouting-service/](../../../manifests/academy/scouting-service/) — Raw K8s manifests
