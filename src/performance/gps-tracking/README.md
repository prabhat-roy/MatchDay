# gps-tracking

FIFA EPTS GPS ingest @ 25Hz -> TimescaleDB

**Domain:** `performance` · **Language:** go · **Port:** 50101

## Notes

- 22 players × 25Hz × 90 minutes = 2.97M rows per match
- Uses TimescaleDB hypertable partitioning by `match_id`
