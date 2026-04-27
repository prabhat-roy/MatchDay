# loyalty-service

Service in the fan-engagement domain of MatchDay.

Language: Go Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/loyalty-service/](../../../helm/charts/loyalty-service/) â€” Helm chart
- [manifests/fan-engagement/loyalty-service/](../../../manifests/fan-engagement/loyalty-service/) â€” Raw K8s manifests
