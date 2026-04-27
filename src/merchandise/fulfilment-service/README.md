# fulfilment-service

Service in the merchandise domain of MatchDay.

Language: Go Â· Port: 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fulfilment-service/](../../../helm/charts/fulfilment-service/) â€” Helm chart
- [manifests/merchandise/fulfilment-service/](../../../manifests/merchandise/fulfilment-service/) â€” Raw K8s manifests
