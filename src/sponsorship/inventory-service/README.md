# inventory-service

Service in the **sponsorship** domain of MatchDay.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inventory-service/](../../../helm/charts/inventory-service/) — Helm chart
- [manifests/sponsorship/inventory-service/](../../../manifests/sponsorship/inventory-service/) — Raw K8s manifests
