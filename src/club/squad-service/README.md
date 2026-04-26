# squad-service

Service in the **club** domain of MatchDay.

**Language:** Go · **Port:** 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/squad-service/](../../../helm/charts/squad-service/) — Helm chart
- [manifests/club/squad-service/](../../../manifests/club/squad-service/) — Raw K8s manifests
