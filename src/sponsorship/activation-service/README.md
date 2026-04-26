# activation-service

Service in the **sponsorship** domain of MatchDay.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/activation-service/](../../../helm/charts/activation-service/) — Helm chart
- [manifests/sponsorship/activation-service/](../../../manifests/sponsorship/activation-service/) — Raw K8s manifests
