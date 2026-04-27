# seat-map-service

Service in the venue domain of MatchDay.

Language: Go Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/seat-map-service/](../../../helm/charts/seat-map-service/) â€” Helm chart
- [manifests/venue/seat-map-service/](../../../manifests/venue/seat-map-service/) â€” Raw K8s manifests
