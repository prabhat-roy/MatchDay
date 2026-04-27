# profile-service

Service in the athlete domain of MatchDay.

Language: Go Â· Port: 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/profile-service/](../../../helm/charts/profile-service/) â€” Helm chart
- [manifests/athlete/profile-service/](../../../manifests/athlete/profile-service/) â€” Raw K8s manifests
