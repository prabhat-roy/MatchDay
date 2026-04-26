# fan-engagement — MatchDay

Fan engagement: loyalty, NFTs, watch-parties, presence. Elixir/Phoenix for concurrent fan presence.

| Service | Language | Port | Description |
|---|---|---|---|
| fan-service | go | 50200 | Fan engagement orchestrator |
| loyalty-service | java | 50201 | Loyalty / points / tiers |
| nft-service | java | 50202 | Off-chain NFT collectibles |
| collectibles-service | java | 50203 | Digital collectibles drops |
| watch-party | elixir | 50204 | Synchronised watch-party (BEAM presence) |
| presence-service | elixir | 50205 | Live fan presence + reactions |
