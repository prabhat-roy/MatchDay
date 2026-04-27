# fitness-service

Service in the medicine domain of MatchDay.

Language: Go Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fitness-service/](../../../helm/charts/fitness-service/) â€” Helm chart
- [manifests/medicine/fitness-service/](../../../manifests/medicine/fitness-service/) â€” Raw K8s manifests
