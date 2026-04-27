# agent-service

Service in the athlete domain of MatchDay.

Language: Go Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/agent-service/](../../../helm/charts/agent-service/) â€” Helm chart
- [manifests/athlete/agent-service/](../../../manifests/athlete/agent-service/) â€” Raw K8s manifests
