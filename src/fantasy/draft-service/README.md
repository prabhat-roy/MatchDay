# draft-service

Service in the fantasy domain of MatchDay.

Language: Go Â· Port: 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/draft-service/](../../../helm/charts/draft-service/) â€” Helm chart
- [manifests/fantasy/draft-service/](../../../manifests/fantasy/draft-service/) â€” Raw K8s manifests
