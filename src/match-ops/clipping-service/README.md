# clipping-service

Service in the match-ops domain of MatchDay.

Language: Go Â· Port: 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/clipping-service/](../../../helm/charts/clipping-service/) â€” Helm chart
- [manifests/match-ops/clipping-service/](../../../manifests/match-ops/clipping-service/) â€” Raw K8s manifests
