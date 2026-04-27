# watch-party

Service in the fan-engagement domain of MatchDay.

Language: Go Â· Port: 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/watch-party/](../../../helm/charts/watch-party/) â€” Helm chart
- [manifests/fan-engagement/watch-party/](../../../manifests/fan-engagement/watch-party/) â€” Raw K8s manifests
