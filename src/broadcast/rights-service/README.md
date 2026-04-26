# rights-service

Service in the **broadcast** domain of MatchDay.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rights-service/](../../../helm/charts/rights-service/) — Helm chart
- [manifests/broadcast/rights-service/](../../../manifests/broadcast/rights-service/) — Raw K8s manifests
