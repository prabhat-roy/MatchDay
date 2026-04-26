# development-pathway

Service in the **academy** domain of MatchDay.

**Language:** Go · **Port:** 50302

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/development-pathway/](../../../helm/charts/development-pathway/) — Helm chart
- [manifests/academy/development-pathway/](../../../manifests/academy/development-pathway/) — Raw K8s manifests
