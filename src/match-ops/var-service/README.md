# var-service

Service in the match-ops domain of MatchDay.

Language: Go Â· Port: 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/var-service/](../../../helm/charts/var-service/) â€” Helm chart
- [manifests/match-ops/var-service/](../../../manifests/match-ops/var-service/) â€” Raw K8s manifests
