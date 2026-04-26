# seat-map-service

Service in the **venue** domain of MatchDay.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/seat-map-service/](../../../helm/charts/seat-map-service/) — Helm chart
- [manifests/venue/seat-map-service/](../../../manifests/venue/seat-map-service/) — Raw K8s manifests
