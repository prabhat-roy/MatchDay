# rights-service

Service in the broadcast domain of MatchDay.

Language: Go Â· Port: 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rights-service/](../../../helm/charts/rights-service/) â€” Helm chart
- [manifests/broadcast/rights-service/](../../../manifests/broadcast/rights-service/) â€” Raw K8s manifests
