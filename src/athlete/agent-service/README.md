# agent-service

Service in the **athlete** domain of MatchDay.

**Language:** Go · **Port:** 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/agent-service/](../../../helm/charts/agent-service/) — Helm chart
- [manifests/athlete/agent-service/](../../../manifests/athlete/agent-service/) — Raw K8s manifests
