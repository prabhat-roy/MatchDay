# kpi-service

Service in the performance domain of MatchDay.

Language: Go Â· Port: 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kpi-service/](../../../helm/charts/kpi-service/) â€” Helm chart
- [manifests/performance/kpi-service/](../../../manifests/performance/kpi-service/) â€” Raw K8s manifests
