# odds-service

Service in the betting domain of MatchDay.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/odds-service/](../../../helm/charts/odds-service/) â€” Helm chart
- [manifests/betting/odds-service/](../../../manifests/betting/odds-service/) â€” Raw K8s manifests
