# talent-id

Service in the **academy** domain of MatchDay.

**Language:** Go · **Port:** 50301

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/talent-id/](../../../helm/charts/talent-id/) — Helm chart
- [manifests/academy/talent-id/](../../../manifests/academy/talent-id/) — Raw K8s manifests
