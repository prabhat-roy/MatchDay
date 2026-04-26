# nft-service

Service in the **fan-engagement** domain of MatchDay.

**Language:** Go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/nft-service/](../../../helm/charts/nft-service/) — Helm chart
- [manifests/fan-engagement/nft-service/](../../../manifests/fan-engagement/nft-service/) — Raw K8s manifests
