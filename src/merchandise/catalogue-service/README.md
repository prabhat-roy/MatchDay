# catalogue-service

Service in the merchandise domain of MatchDay.

Language: Go Â· Port: 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/catalogue-service/](../../../helm/charts/catalogue-service/) â€” Helm chart
- [manifests/merchandise/catalogue-service/](../../../manifests/merchandise/catalogue-service/) â€” Raw K8s manifests
