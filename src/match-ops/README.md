# match-ops — MatchDay

Live match operations. Sub-second glass-to-glass for live events. Elixir fan-out for 500K+ concurrent fans.

| Service | Language | Port | Description |
|---|---|---|---|
| match-service | java | 50140 | Match lifecycle, status |
| lineup-service | java | 50141 | Pre-match lineups, formations |
| referee-service | java | 50142 | Referee assignment + reports |
| live-data-ingest | go | 50143 | OPTA/StatsBomb live feed -> Kafka |
| live-fanout | elixir | 50144 | Phoenix WebSocket fan-out (500K+ concurrent) |
| var-service | java | 50145 | VAR review + decision log |
| clip-service | rust | 50146 | Low-latency clip extraction |
