{{- define "talent-id.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "talent-id.labels" -}}
app.kubernetes.io/name: talent-id
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: academy
{{- end -}}

{{- define "talent-id.selectorLabels" -}}
app.kubernetes.io/name: talent-id
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
