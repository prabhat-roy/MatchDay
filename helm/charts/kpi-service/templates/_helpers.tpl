{{- define "kpi-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "kpi-service.labels" -}}
app.kubernetes.io/name: kpi-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: performance
{{- end -}}

{{- define "kpi-service.selectorLabels" -}}
app.kubernetes.io/name: kpi-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
