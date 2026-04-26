{{- define "biometric-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "biometric-service.labels" -}}
app.kubernetes.io/name: biometric-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: athlete
{{- end -}}

{{- define "biometric-service.selectorLabels" -}}
app.kubernetes.io/name: biometric-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
