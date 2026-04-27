# transfer-service

Service in the club domain of MatchDay.

Language: Go Â· Port: 50063

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/transfer-service/](../../../helm/charts/transfer-service/) â€” Helm chart
- [manifests/club/transfer-service/](../../../manifests/club/transfer-service/) â€” Raw K8s manifests
