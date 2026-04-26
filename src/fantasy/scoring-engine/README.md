# scoring-engine

Service in the **fantasy** domain of MatchDay.

**Language:** Go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scoring-engine/](../../../helm/charts/scoring-engine/) — Helm chart
- [manifests/fantasy/scoring-engine/](../../../manifests/fantasy/scoring-engine/) — Raw K8s manifests
