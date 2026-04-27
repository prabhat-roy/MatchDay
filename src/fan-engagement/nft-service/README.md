# nft-service

Service in the fan-engagement domain of MatchDay.

Language: Go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/nft-service/](../../../helm/charts/nft-service/) â€” Helm chart
- [manifests/fan-engagement/nft-service/](../../../manifests/fan-engagement/nft-service/) â€” Raw K8s manifests
