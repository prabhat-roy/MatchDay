# responsible-gambling

Service in the **betting** domain of MatchDay.

**Language:** Go · **Port:** 50243

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/responsible-gambling/](../../../helm/charts/responsible-gambling/) — Helm chart
- [manifests/betting/responsible-gambling/](../../../manifests/betting/responsible-gambling/) — Raw K8s manifests
