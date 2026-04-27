# contract-service

Service in the club domain of MatchDay.

Language: Go Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-service/](../../../helm/charts/contract-service/) â€” Helm chart
- [manifests/club/contract-service/](../../../manifests/club/contract-service/) â€” Raw K8s manifests
