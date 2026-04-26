{{- define "contract-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "contract-service.labels" -}}
app.kubernetes.io/name: contract-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: club
{{- end -}}

{{- define "contract-service.selectorLabels" -}}
app.kubernetes.io/name: contract-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
