# scouting-service

Service in the academy domain of MatchDay.

Language: Go Â· Port: 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scouting-service/](../../../helm/charts/scouting-service/) â€” Helm chart
- [manifests/academy/scouting-service/](../../../manifests/academy/scouting-service/) â€” Raw K8s manifests
