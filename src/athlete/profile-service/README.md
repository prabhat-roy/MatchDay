# profile-service

Service in the **athlete** domain of MatchDay.

**Language:** Go · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/profile-service/](../../../helm/charts/profile-service/) — Helm chart
- [manifests/athlete/profile-service/](../../../manifests/athlete/profile-service/) — Raw K8s manifests
