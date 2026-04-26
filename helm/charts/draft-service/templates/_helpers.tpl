{{- define "draft-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "draft-service.labels" -}}
app.kubernetes.io/name: draft-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: fantasy
{{- end -}}

{{- define "draft-service.selectorLabels" -}}
app.kubernetes.io/name: draft-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
