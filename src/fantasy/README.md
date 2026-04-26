# fantasy — MatchDay

Fantasy sports. Kotlin/Spring scoring engine — deterministic, recomputable from event log.

| Service | Language | Port | Description |
|---|---|---|---|
| fantasy-league | kotlin | 50220 | Fantasy league lifecycle |
| draft-service | kotlin | 50221 | Draft engine |
| scoring-engine | kotlin | 50222 | Real-time fantasy scoring (Flink-fed) |
| contest-service | kotlin | 50223 | Public + private contests |
| payout-service | java | 50224 | Contest settlement / payouts |
