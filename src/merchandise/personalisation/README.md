# personalisation

Service in the **merchandise** domain of MatchDay.

**Language:** Go · **Port:** 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/personalisation/](../../../helm/charts/personalisation/) — Helm chart
- [manifests/merchandise/personalisation/](../../../manifests/merchandise/personalisation/) — Raw K8s manifests
