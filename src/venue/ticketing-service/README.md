# ticketing-service

Service in the **venue** domain of MatchDay.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ticketing-service/](../../../helm/charts/ticketing-service/) — Helm chart
- [manifests/venue/ticketing-service/](../../../manifests/venue/ticketing-service/) — Raw K8s manifests
