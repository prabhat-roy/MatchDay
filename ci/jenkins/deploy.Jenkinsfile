pipeline {
    agent { kubernetes { yamlFile 'ci/jenkins/agent-pod.yaml' } }
    parameters {
        choice(name: 'CLOUD',   choices: ['aws','gcp','azure'])
        choice(name: 'ENV',     choices: ['dev','staging','prod'])
        string(name: 'SERVICE', defaultValue: 'all')
        string(name: 'VERSION', defaultValue: 'latest')
        choice(name: 'STRATEGY',choices: ['canary','blue-green'], description: 'Use blue-green for ticketing/betting on match days')
    }
    options { timeout(time: 30, unit: 'MINUTES') }
    stages {
        stage('Configure kubeconfig') {
            steps {
                script {
                    if (params.CLOUD == 'aws')        sh 'aws eks update-kubeconfig --name matchday-${ENV} --region us-east-1'
                    else if (params.CLOUD == 'gcp')   sh 'gcloud container clusters get-credentials matchday-${ENV} --region europe-west4 --project matchday-${ENV}'
                    else                              sh 'az aks get-credentials --resource-group matchday-${ENV} --name matchday-${ENV}'
                }
            }
        }
        stage('Helm upgrade') {
            steps {
                sh '''#!/usr/bin/env bash
                set -euo pipefail
                CHART_DIRS=$([ "$SERVICE" = "all" ] && find helm/charts -mindepth 1 -maxdepth 1 -type d || echo "helm/charts/$SERVICE")
                for chart in $CHART_DIRS; do
                    name=$(basename "$chart")
                    echo "::: deploying $name to $CLOUD/$ENV ($STRATEGY)"
                    helm upgrade --install "$name" "$chart" \
                        --namespace matchday --create-namespace \
                        -f "$chart/values.yaml" \
                        -f "$chart/values-${CLOUD}.yaml" \
                        --set image.tag=${VERSION} \
                        --set deploy.strategy=${STRATEGY}
                done
                '''
            }
        }
        stage('Verify') { steps { sh 'kubectl get pods -A -l app.kubernetes.io/part-of=matchday'; sh 'make k8s-validate' } }
    }
}
