# standings-service

Service in the league domain of MatchDay.

Language: Go Â· Port: 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/standings-service/](../../../helm/charts/standings-service/) â€” Helm chart
- [manifests/league/standings-service/](../../../manifests/league/standings-service/) â€” Raw K8s manifests
