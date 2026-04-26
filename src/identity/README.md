# identity — MatchDay

Identity & access management: fan auth, athlete portal SSO with biometric binding, club SSO, MFA.

| Service | Language | Port | Description |
|---|---|---|---|
| auth-service | rust | 50020 | OAuth2/OIDC + WebAuthn fan auth |
| fan-profile | go | 50021 | Fan profile + preferences |
| athlete-sso | rust | 50022 | Athlete portal SSO with biometric binding |
| club-sso | rust | 50023 | Club staff SSO |
| mfa-service | go | 50024 | MFA / TOTP / WebAuthn |
