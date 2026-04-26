# video-analysis

Service in the **performance** domain of MatchDay.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/video-analysis/](../../../helm/charts/video-analysis/) — Helm chart
- [manifests/performance/video-analysis/](../../../manifests/performance/video-analysis/) — Raw K8s manifests
