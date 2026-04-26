# valuation-service

Service in the **sponsorship** domain of MatchDay.

**Language:** Go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/valuation-service/](../../../helm/charts/valuation-service/) — Helm chart
- [manifests/sponsorship/valuation-service/](../../../manifests/sponsorship/valuation-service/) — Raw K8s manifests
