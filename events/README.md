# Events — MatchDay

Avro event schemas — one canonical event per domain.

Topic naming: `{domain}.{entity}.{event}` (CLAUDE.md communication rule #5).

| Domain | Topic | Schema |
|---|---|---|
| match-ops | `match-ops.event.recorded` | `match-ops.event.recorded.avsc` (live event) |
| performance | `performance.gps.sample` | TimescaleDB hypertable backed |
| medicine | `medicine.anti-doping.test-recorded` | siloed cluster, audit-mandatory |
| fantasy | `fantasy.score.updated` | recompute-deterministic |
| betting | `betting.bet.placed` | post responsible-gambling check |
| venue | `venue.ticket.scanned` | sub-500ms latency target |
| broadcast | `broadcast.clip.published` | rights-validated |
| fan-engagement | `fan-engagement.watch-party.joined` | Elixir presence |
| identity | `identity.session.started` | |
| notifications | `notifications.notification.dispatched` | |
| club | `club.transfer.completed` | |
| league | `league.fixture.scheduled` | |
| athlete | `athlete.biometric.ingested` | siloed timeseries |
| sponsorship | `sponsorship.activation.delivered` | |
| merchandise | `merchandise.drop.released` | 10x surge guarded |
| academy | `academy.talent.identified` | COPPA gated |
| analytics | `analytics.prediction.published` | |
| platform | `platform.audit.action-recorded` | |

Live data is canonical at the `match-ops.event.recorded` topic — fantasy /
betting / broadcast all consume from this topic.
