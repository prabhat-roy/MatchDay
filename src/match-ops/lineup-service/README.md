# lineup-service

Service in the match-ops domain of MatchDay.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lineup-service/](../../../helm/charts/lineup-service/) â€” Helm chart
- [manifests/match-ops/lineup-service/](../../../manifests/match-ops/lineup-service/) â€” Raw K8s manifests
