# payout-service

Service in the fantasy domain of MatchDay.

Language: Go Â· Port: 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payout-service/](../../../helm/charts/payout-service/) â€” Helm chart
- [manifests/fantasy/payout-service/](../../../manifests/fantasy/payout-service/) â€” Raw K8s manifests
