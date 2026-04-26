{{- define "injury-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "injury-service.labels" -}}
app.kubernetes.io/name: injury-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: medicine
{{- end -}}

{{- define "injury-service.selectorLabels" -}}
app.kubernetes.io/name: injury-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
