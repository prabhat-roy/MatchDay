{{- define "inventory-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "inventory-service.labels" -}}
app.kubernetes.io/name: inventory-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: sponsorship
{{- end -}}

{{- define "inventory-service.selectorLabels" -}}
app.kubernetes.io/name: inventory-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
