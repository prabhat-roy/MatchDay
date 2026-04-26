{{- define "clip-publisher.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "clip-publisher.labels" -}}
app.kubernetes.io/name: clip-publisher
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: broadcast
{{- end -}}

{{- define "clip-publisher.selectorLabels" -}}
app.kubernetes.io/name: clip-publisher
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
