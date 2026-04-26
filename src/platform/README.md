# platform — MatchDay

Edge platform services: ingress, BFFs, federated GraphQL.

| Service | Language | Port | Description |
|---|---|---|---|
| api-gateway | go | 50000 | HTTP+gRPC ingress, OAuth2/mTLS, rate limit, geo routing |
| fan-bff | go | 50001 | BFF for fan portal (Next.js) |
| club-bff | go | 50002 | BFF for club dashboard (React) |
| media-bff | go | 50003 | BFF for media/broadcast portal (Next.js) |
| graphql-gateway | go | 50004 | Federated GraphQL across domains |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/platform/](../../proto/platform/) for the gRPC contracts.
