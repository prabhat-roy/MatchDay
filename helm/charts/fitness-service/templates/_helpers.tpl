{{- define "fitness-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "fitness-service.labels" -}}
app.kubernetes.io/name: fitness-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: medicine
{{- end -}}

{{- define "fitness-service.selectorLabels" -}}
app.kubernetes.io/name: fitness-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
