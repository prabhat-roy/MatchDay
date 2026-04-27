# inventory-service

Service in the sponsorship domain of MatchDay.

Language: Go Â· Port: 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inventory-service/](../../../helm/charts/inventory-service/) â€” Helm chart
- [manifests/sponsorship/inventory-service/](../../../manifests/sponsorship/inventory-service/) â€” Raw K8s manifests
