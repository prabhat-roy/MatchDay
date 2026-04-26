# Source Code — MatchDay

Backend services organised by business domain. Each domain has its own folder; each
service inside a domain has its own subfolder with a complete project layout
(Dockerfile, Makefile, `.env.example`, language-specific build file, source tree).

## Domains (17)

- [`platform/`](platform/) — 5 services (gateway, BFFs, GraphQL)
- [`identity/`](identity/) — 5 services (auth, fan-profile, athlete/club SSO, MFA)
- [`league/`](league/) — 5 services
- [`club/`](club/) — 5 services
- [`athlete/`](athlete/) — 4 services (incl. siloed biometric)
- [`performance/`](performance/) — 5 services
- [`medicine/`](medicine/) — 5 services (incl. WADA-siloed anti-doping)
- [`match-ops/`](match-ops/) — 7 services (live ingest, Elixir fan-out, VAR, clipping)
- [`venue/`](venue/) — 5 services (incl. ticketing)
- [`broadcast/`](broadcast/) — 5 services (incl. Rust low-latency stream packaging)
- [`fan-engagement/`](fan-engagement/) — 6 services (incl. Elixir watch-party, presence)
- [`fantasy/`](fantasy/) — 5 services (Kotlin scoring engine)
- [`betting/`](betting/) — 5 services (regulated; responsible-gambling enforced)
- [`sponsorship/`](sponsorship/) — 5 services
- [`merchandise/`](merchandise/) — 4 services
- [`academy/`](academy/) — 4 services
- [`analytics/`](analytics/) — 4 services (match-prediction, scout-ai, fan, revenue)
- [`notifications/`](notifications/) — 6 services

Total: **89 services**.

## Conventions

- One folder per service; one main entry file per language (`main.go`, `Application.java`, `main.py`, etc.)
- Every service exposes `/healthz` returning `{ "status": "ok" }`
- Every service ships a `Dockerfile` (multi-stage, non-root, minimal base) and a `Makefile`
- gRPC contracts live in [`../proto/<domain>/<service>.proto`](../proto/)
- Kafka schemas live in [`../events/`](../events/)

## Languages used

- **Go** (1.24): high-throughput live-data ingest, gateway, BFFs, notification orchestration, access control
- **Java 21 / Spring Boot 3.3**: ticketing, sponsorship, settlement, league/club/athlete CRUD, contracts
- **Kotlin / Spring Boot 3.3**: fantasy scoring engine + draft + contests
- **Elixir / Phoenix**: real-time live data fan-out, watch-party, fan presence (BEAM/OTP for 500K+ concurrent connections)
- **Python 3.12 / FastAPI**: match-prediction, scout-ai, fan-analytics, video analysis ML, talent ID
- **Node.js 22 / Fastify**: notifications, social engagement
- **Rust 1.80 / Actix**: live video clipping, low-latency stream packaging, biometric, auth, SSO
