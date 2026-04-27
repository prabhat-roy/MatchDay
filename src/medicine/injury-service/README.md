# injury-service

Service in the medicine domain of MatchDay.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/injury-service/](../../../helm/charts/injury-service/) â€” Helm chart
- [manifests/medicine/injury-service/](../../../manifests/medicine/injury-service/) â€” Raw K8s manifests
