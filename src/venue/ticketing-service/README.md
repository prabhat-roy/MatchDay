# ticketing-service

Service in the venue domain of MatchDay.

Language: Go Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ticketing-service/](../../../helm/charts/ticketing-service/) â€” Helm chart
- [manifests/venue/ticketing-service/](../../../manifests/venue/ticketing-service/) â€” Raw K8s manifests
