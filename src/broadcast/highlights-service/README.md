# highlights-service

Service in the broadcast domain of MatchDay.

Language: Go Â· Port: 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/highlights-service/](../../../helm/charts/highlights-service/) â€” Helm chart
- [manifests/broadcast/highlights-service/](../../../manifests/broadcast/highlights-service/) â€” Raw K8s manifests
