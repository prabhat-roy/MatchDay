# video-analysis

Service in the performance domain of MatchDay.

Language: Go Â· Port: 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/video-analysis/](../../../helm/charts/video-analysis/) â€” Helm chart
- [manifests/performance/video-analysis/](../../../manifests/performance/video-analysis/) â€” Raw K8s manifests
