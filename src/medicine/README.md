# medicine â€” MatchDay

Sports medicine: injury, rehab, fitness, anti-doping (WADA-siloed cluster), HL7 medical record.

> Anti-doping data is siloed â€” separate K8s namespace, dedicated PostgreSQL cluster,
> separate KMS keys, append-only audit trail. Every access logged via `anti-doping-audit.rego`.

| Service | Language | Port | Description |
|---|---|---|---|
| injury-service | java | 50120 | Injury registry |
| rehabilitation-service | java | 50121 | Rehab plans + progress |
| fitness-service | java | 50122 | Fitness assessments |
| anti-doping-service | java | 50123 | WADA ADAMS integration (siloed cluster) |
| medical-record | java | 50124 | HL7 athlete medical record |
