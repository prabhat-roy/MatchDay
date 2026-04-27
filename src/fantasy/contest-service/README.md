# contest-service

Service in the fantasy domain of MatchDay.

Language: Go Â· Port: 50222

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contest-service/](../../../helm/charts/contest-service/) â€” Helm chart
- [manifests/fantasy/contest-service/](../../../manifests/fantasy/contest-service/) â€” Raw K8s manifests
