{{- define "risk-management.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "risk-management.labels" -}}
app.kubernetes.io/name: risk-management
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: betting
{{- end -}}

{{- define "risk-management.selectorLabels" -}}
app.kubernetes.io/name: risk-management
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
