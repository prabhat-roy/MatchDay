# performance — MatchDay

Performance analytics: GPS tracking (FIFA EPTS), event tracking (OPTA/StatsBomb), video analysis, KPIs.

| Service | Language | Port | Description |
|---|---|---|---|
| performance-service | java | 50100 | Performance KPI rollups |
| gps-tracking | go | 50101 | FIFA EPTS GPS ingest @ 25Hz -> TimescaleDB |
| event-tracking | go | 50102 | OPTA/StatsBomb match-event ingest |
| video-analysis | python | 50103 | CV pipeline (Hawk-Eye/TRACAB) for tracking |
| kpi-service | java | 50104 | Tactical KPIs (xG, PPDA, sprint distance) |
