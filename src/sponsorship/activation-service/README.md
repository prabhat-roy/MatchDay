# activation-service

Service in the sponsorship domain of MatchDay.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/activation-service/](../../../helm/charts/activation-service/) â€” Helm chart
- [manifests/sponsorship/activation-service/](../../../manifests/sponsorship/activation-service/) â€” Raw K8s manifests
