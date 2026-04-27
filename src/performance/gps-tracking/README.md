# gps-tracking

FIFA EPTS GPS ingest @ 25Hz -> TimescaleDB

Domain: `performance` Â· Language: go Â· Port: 50101

## Notes

- 22 players Ã— 25Hz Ã— 90 minutes = 2.97M rows per match
- Uses TimescaleDB hypertable partitioning by `match_id`
