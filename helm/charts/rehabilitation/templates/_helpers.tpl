{{- define "rehabilitation.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "rehabilitation.labels" -}}
app.kubernetes.io/name: rehabilitation
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: medicine
{{- end -}}

{{- define "rehabilitation.selectorLabels" -}}
app.kubernetes.io/name: rehabilitation
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
