# payout-service

Service in the **fantasy** domain of MatchDay.

**Language:** Go · **Port:** 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payout-service/](../../../helm/charts/payout-service/) — Helm chart
- [manifests/fantasy/payout-service/](../../../manifests/fantasy/payout-service/) — Raw K8s manifests
