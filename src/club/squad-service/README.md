# squad-service

Service in the club domain of MatchDay.

Language: Go Â· Port: 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/squad-service/](../../../helm/charts/squad-service/) â€” Helm chart
- [manifests/club/squad-service/](../../../manifests/club/squad-service/) â€” Raw K8s manifests
