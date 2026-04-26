# Proto — MatchDay

gRPC `.proto` definitions for all 17 domains. Single source of truth for
service contracts. Generated stubs land in `gen/{go,java,python,kotlin}`.

Layout:
- `common/` — shared types (AthleteId, MatchRef, ResponsibleGamblingContext, ...)
- `<domain>/<service>.proto` — one file per service, package
  `matchday.<domain>.v1`

Conventions:
- Health RPC on every service: `Health(HealthRequest) returns (HealthResponse)`
- Live-data RPCs carry `EventTime` so consumers can de-duplicate / re-order
- Betting RPCs MUST accept `ResponsibleGamblingContext` — see CLAUDE.md
- Anti-doping RPCs are append-only; UPDATE/DELETE operations are intentionally absent
