# CI — MatchDay

CI pipelines across Jenkins (primary), GitHub Actions, GitLab CI, Tekton.

| Path | Purpose |
|---|---|
| `jenkins/build.Jenkinsfile`     | per-service build + unit test + image push |
| `jenkins/security.Jenkinsfile`  | trivy + semgrep + gitleaks + checkov + scorecard |
| `jenkins/deploy.Jenkinsfile`    | Helm deploy to selected cloud + env |
| `jenkins/agent-pod.yaml`        | agent pod spec |
| `github-actions/pr-validation.yml` | PR gate (lint, scan, CodeQL) |
| `github-actions/deploy.yml`     | manual deploy with cloud auth (OIDC) |
| `gitlab-ci/.gitlab-ci.yml`      | Kaniko build + Trivy + Syft + Cosign |
| `tekton/pipeline.yaml`          | helm-upgrade-from-source pipeline |

Match-day deploys: betting + ticketing use **blue/green**, all others **canary**.
