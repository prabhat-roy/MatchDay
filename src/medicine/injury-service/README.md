# injury-service

Service in the **medicine** domain of MatchDay.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/injury-service/](../../../helm/charts/injury-service/) — Helm chart
- [manifests/medicine/injury-service/](../../../manifests/medicine/injury-service/) — Raw K8s manifests
