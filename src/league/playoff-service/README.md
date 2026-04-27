# playoff-service

Service in the league domain of MatchDay.

Language: Go Â· Port: 50043

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/playoff-service/](../../../helm/charts/playoff-service/) â€” Helm chart
- [manifests/league/playoff-service/](../../../manifests/league/playoff-service/) â€” Raw K8s manifests
