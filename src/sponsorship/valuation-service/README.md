# valuation-service

Service in the sponsorship domain of MatchDay.

Language: Go Â· Port: 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/valuation-service/](../../../helm/charts/valuation-service/) â€” Helm chart
- [manifests/sponsorship/valuation-service/](../../../manifests/sponsorship/valuation-service/) â€” Raw K8s manifests
