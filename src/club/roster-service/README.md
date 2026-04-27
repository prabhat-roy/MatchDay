# roster-service

Service in the club domain of MatchDay.

Language: Go Â· Port: 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/roster-service/](../../../helm/charts/roster-service/) â€” Helm chart
- [manifests/club/roster-service/](../../../manifests/club/roster-service/) â€” Raw K8s manifests
