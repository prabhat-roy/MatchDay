# fixture-service

Service in the league domain of MatchDay.

Language: Go Â· Port: 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fixture-service/](../../../helm/charts/fixture-service/) â€” Helm chart
- [manifests/league/fixture-service/](../../../manifests/league/fixture-service/) â€” Raw K8s manifests
