# vip-service

Service in the venue domain of MatchDay.

Language: Go Â· Port: 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vip-service/](../../../helm/charts/vip-service/) â€” Helm chart
- [manifests/venue/vip-service/](../../../manifests/venue/vip-service/) â€” Raw K8s manifests
