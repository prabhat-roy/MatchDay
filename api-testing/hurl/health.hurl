# Health check for all critical services
GET https://matchday.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.matchday.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
