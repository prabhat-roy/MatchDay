# anti-doping

Service in the **medicine** domain of MatchDay.

**Language:** Go · **Port:** 50123

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/anti-doping/](../../../helm/charts/anti-doping/) — Helm chart
- [manifests/medicine/anti-doping/](../../../manifests/medicine/anti-doping/) — Raw K8s manifests
