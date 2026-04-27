# live-data-ingest

OPTA/StatsBomb live feed -> Kafka

Domain: `match-ops` Â· Language: go Â· Port: 50143

## Sub-1s glass-to-glass

OPTA feed -> Kafka -> Flink -> NATS -> WebSocket fan-out (Elixir live-fanout).
Out-of-order events are tolerated â€” events are keyed by event timestamp, not arrival order.
