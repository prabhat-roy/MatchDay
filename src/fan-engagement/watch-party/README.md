# watch-party

Service in the **fan-engagement** domain of MatchDay.

**Language:** Go · **Port:** 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/watch-party/](../../../helm/charts/watch-party/) — Helm chart
- [manifests/fan-engagement/watch-party/](../../../manifests/fan-engagement/watch-party/) — Raw K8s manifests
