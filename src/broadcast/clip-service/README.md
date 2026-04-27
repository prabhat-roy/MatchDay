# clip-service

Service in the broadcast domain of MatchDay.

Language: Go Â· Port: 50183

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/clip-service/](../../../helm/charts/clip-service/) â€” Helm chart
- [manifests/broadcast/clip-service/](../../../manifests/broadcast/clip-service/) â€” Raw K8s manifests
