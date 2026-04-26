{{- define "gps-tracking.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "gps-tracking.labels" -}}
app.kubernetes.io/name: gps-tracking
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: performance
{{- end -}}

{{- define "gps-tracking.selectorLabels" -}}
app.kubernetes.io/name: gps-tracking
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
