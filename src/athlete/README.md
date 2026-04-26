# athlete — MatchDay

Athlete management. Biometric data lives in a siloed PostgreSQL with separate keys + namespace.

| Service | Language | Port | Description |
|---|---|---|---|
| athlete-service | java | 50080 | Athlete master data |
| profile-service | java | 50081 | Athlete profile + bio |
| agent-service | java | 50082 | Agent + representation registry |
| biometric-service | rust | 50083 | Athlete biometric capture (siloed PG) |
