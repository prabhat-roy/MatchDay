{{- define "roster-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "roster-service.labels" -}}
app.kubernetes.io/name: roster-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: club
{{- end -}}

{{- define "roster-service.selectorLabels" -}}
app.kubernetes.io/name: roster-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
