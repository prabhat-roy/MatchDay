# referee-service

Service in the match-ops domain of MatchDay.

Language: Go Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/referee-service/](../../../helm/charts/referee-service/) â€” Helm chart
- [manifests/match-ops/referee-service/](../../../manifests/match-ops/referee-service/) â€” Raw K8s manifests
