# scoring-engine

Service in the fantasy domain of MatchDay.

Language: Go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scoring-engine/](../../../helm/charts/scoring-engine/) â€” Helm chart
- [manifests/fantasy/scoring-engine/](../../../manifests/fantasy/scoring-engine/) â€” Raw K8s manifests
