# betting â€” MatchDay

Sports betting integration. Regulated by jurisdiction (UKGC, MGA, Nevada).

> Responsible-gambling rule â€” `responsible-gambling-service` enforces deposit limits + self-exclusion
> on every bet. Never bypassed. Enforced by `gambling-responsible-limits.rego`.

| Service | Language | Port | Description |
|---|---|---|---|
| odds-service | java | 50240 | Odds compilation + push |
| bet-feed | go | 50241 | Inbound bet feed gateway |
| risk-management | java | 50242 | Liability + risk caps |
| responsible-gambling | java | 50243 | Deposit limits, self-exclusion (regulatory) |
| kyc-service | java | 50244 | KYC/AML for betting |
