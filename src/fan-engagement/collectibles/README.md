# collectibles

Service in the **fan-engagement** domain of MatchDay.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/collectibles/](../../../helm/charts/collectibles/) — Helm chart
- [manifests/fan-engagement/collectibles/](../../../manifests/fan-engagement/collectibles/) — Raw K8s manifests
