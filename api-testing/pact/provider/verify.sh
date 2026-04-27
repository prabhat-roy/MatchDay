#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.matchday.internal \
  --provider matchday_identity_service \
  --provider-base-url http://identity-service.matchday.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
