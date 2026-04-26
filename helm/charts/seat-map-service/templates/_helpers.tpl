{{- define "seat-map-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "seat-map-service.labels" -}}
app.kubernetes.io/name: seat-map-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: venue
{{- end -}}

{{- define "seat-map-service.selectorLabels" -}}
app.kubernetes.io/name: seat-map-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
