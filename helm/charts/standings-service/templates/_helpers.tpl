{{- define "standings-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "standings-service.labels" -}}
app.kubernetes.io/name: standings-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: league
{{- end -}}

{{- define "standings-service.selectorLabels" -}}
app.kubernetes.io/name: standings-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
