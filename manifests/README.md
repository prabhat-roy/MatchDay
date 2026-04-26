# Manifests — MatchDay

Per-service plain Kubernetes manifests (Deployment / StatefulSet, Service,
ConfigMap, ServiceAccount, HPA). Mirrors the structure of `helm/charts/`
for clusters that prefer raw kubectl over Helm.

Layout: `manifests/<domain>/<service>/{deployment,service,configmap,serviceaccount,hpa}.yaml`

Anti-doping manifests target the siloed `matchday-anti-doping` namespace.
