# AI_PLAN.md â€” MatchDay (Sports & Live-Event Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the MatchDay-specific specialisation.

---

## 1. Why AI in MatchDay

Live sport is a streaming-data, fan-engagement, and ops-optimisation
business at the same time. AI must be:

- Sub-second for in-play stat overlays and bet-pricing signals.
- Multimodal (broadcast video, tracking data, fan social media,
  ticketing).
- Personalised at the individual fan level for retention and
  monetisation, while staying compliant with consumer-protection laws on
  betting.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Match-outcome / win-probability prediction | analytics, betting | GBM + Bayesian update streaming | <500 ms |
| 2 | Player-tracking + event detection from broadcast | analytics, video | YOLO + ByteTrack + temporal action segmentation | <80 ms/frame |
| 3 | Highlight auto-generation | media | CLIP-based scene scorer + LLM headline gen | <60 s post-event |
| 4 | Fan-engagement chatbot (multilingual) | crm, fan | Llama 3.1 70B + RAG over team facts | <1.2 s |
| 5 | Ticket-pricing optimisation (dynamic) | tickets, finance | Demand model + LightGBM + RL | hourly |
| 6 | Injury-risk prediction (training load) | medical, performance | Survival GBM + GNN on player history | nightly |
| 7 | Personalised content recommendation | media, fan | Two-tower retrieval + transformer ranker | <100 ms |
| 8 | Crowd-flow / venue-ops forecast | ops, security | Spatio-temporal GNN | per-event |
| 9 | Voice-driven coach assistant (tactical Q&A) | performance | Whisper + Llama 3.1 70B + tool-calling on tracking data | <2 s |
| 10 | Content moderation (chat, social) | community | RoBERTa + Llama 3.1 + image classifier | <300 ms |
| 11 | Player-performance analytics (xG, xT, role detection) | performance | Custom CV + GBM + LSTM | per-match |
| 12 | Sponsorship & ad-targeting | commercial | LightGBM + uplift | nightly |

---

## 3. Hierarchical Agent Architecture

Reuses OpenClaw / Paperclip / NemoClaw from `ShopOS/AI.md`.

### Tier 0 â€” Master Architect Agent

`match-architect` â€” researches AI tooling, proposes services, on-boards
Tier-1 leads, weekly written report. Read-only on prod.

### Tier 1 â€” Division Leads (5)

| Agent | Scope |
|-------|-------|
| `match-dev-lead`        | Backend/frontend service code |
| `match-devops-lead`     | Helm, GitOps, infra, CI |
| `match-devsecops-lead`  | OPA, Vault, Cilium, Falco, betting-compliance |
| `match-dataml-lead`     | Feature store, training, drift |
| `match-platform-lead`   | Cross-cutting (idempotency, saga, outbox), edge runtime |

### Tier 2 â€” Specialist Agents

By language: Go, Java, Kotlin, Python, Node, Rust, TypeScript, Swift,
Dart.

By tool: PostgreSQL, MongoDB, Redis, ScyllaDB, ClickHouse, Cassandra,
Kafka, NATS, RabbitMQ, MQTT, Vault, Keycloak, OPA, Kyverno, Falco, Cilium,
Istio, ArgoCD, Argo Workflows, Prometheus, Grafana, Loki, Jaeger,
OpenTelemetry, MinIO, Trivy, Cosign, Pulsar, Druid, Camunda, OpenFGA,
Wazuh, OvenMediaEngine (live streaming), SRT relay, FFmpeg
pipelines, MediaMTX, NVIDIA Maxine SDK (self-hosted alternatives).

By service â€” one agent per microservice (~175). Owns README,
OpenAPI, tests, CHANGELOG, deps, /healthz.

### Tier 3 â€” Ephemeral Workers

Spawned for retraining win-probability after season schema changes,
generating highlight reels post-match, fan-content moderation backfills.

### Lifecycle

Research â†’ Document â†’ Implement â†’ Test â†’ Review â†’ Deploy â†’ Monitor â†’
Respond â†’ Upgrade â†’ Report. Live-event freeze window: NemoClaw blocks
agent code-changes during scheduled live windows.

---

## 4. Separate AI Infrastructure

```
ai-platform/
â”œâ”€â”€ cluster: match-ai-{aws,gcp,azure}     â† cloud GPU pool
â”œâ”€â”€ cluster: match-ai-edge                â† stadium k3s + Jetson Orin
â”œâ”€â”€ namespace: match-ai-control            â† Paperclip
â”œâ”€â”€ namespace: match-ai-agents             â† OpenClaw runtime
â”œâ”€â”€ namespace: match-ai-sandbox            â† NemoClaw
â”œâ”€â”€ namespace: match-ai-models             â† vLLM, Ollama, LiteLLM, Triton
â”œâ”€â”€ namespace: match-ai-data               â† Qdrant, Weaviate, MinIO, MLflow
â”œâ”€â”€ namespace: match-ai-obs                â† Langfuse, Phoenix
â””â”€â”€ namespace: match-ai-pipelines          â† Argo Workflows
```

### Hardware

- Cloud: A100 for video + tracking model training; A10G/L4 for LLM.
- Stadium edge: Jetson Orin running TensorRT for live tracking + cam.

### Software stack

Same as the FreightForce/StayNest baseline â€” vLLM, LiteLLM, Paperclip,
OpenClaw, NemoClaw, Qdrant, Weaviate, MLflow, Feast, Argo Workflows,
Evidently, Langfuse, Phoenix.

Plus: OvenMediaEngine + FFmpeg + MediaMTX for live broadcast pipeline,
self-hosted Whisper + Coqui TTS for multilingual voice.

### Data isolation

- Per-region (EU, UK, US, IN, AU) AI data planes.
- Player-tracking data licensed per-league; OPA enforces query scope.
- Fan PII tokenised in any prompt; consent ledger for marketing AI.

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| GDPR / CCPA / DPDP | PII tokenisation; right-to-erasure |
| Sports-data licensing | OPA policy per data feed; AI cannot redistribute |
| Betting / responsible gaming | NemoClaw blocks AI advice that solicits gambling or targets self-excluded users |
| Children's protection (COPPA / GDPR-K) | AI personalisation disabled for under-13 accounts |
| Live-event freeze | No agent code deploys during a live match window |
| Content moderation | All moderation decisions logged + appealable |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `match-ai-*` cluster up; vLLM Llama 3.1 70B |
| 2 | Paperclip + NemoClaw; Tier-0 architect live |
| 3 | Tier-1 leads; win-prob v0 shadow |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents (analytics â†’ media â†’ fan first) |
| 6 | Highlight auto-gen pilot; chatbot prod |
| 7 | Player tracking v1; ticket-pricing optimisation |
| 8 | Multi-cloud failover drill, stadium edge rollout |

---

## 7. Cost Envelope (target)

- Cloud infra: $4,800 â€“ $7,200 / month per primary cloud
- Stadium edge: $2,500 one-time + $60/month ops
- No subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
