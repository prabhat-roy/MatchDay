# venue — MatchDay

Venue & ticketing. Ticketing uses **blue-green during live events** (CLAUDE.md rule).

| Service | Language | Port | Description |
|---|---|---|---|
| venue-service | java | 50160 | Venue master data + capacity |
| ticketing-service | java | 50161 | Ticket inventory, sales, settlement |
| seat-map-service | java | 50162 | Seat-map rendering + selection |
| access-control | go | 50163 | Turnstile / scanner gateway |
| vip-service | java | 50164 | VIP / hospitality experience |
