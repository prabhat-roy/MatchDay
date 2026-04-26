{{- define "access-control.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "access-control.labels" -}}
app.kubernetes.io/name: access-control
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: venue
{{- end -}}

{{- define "access-control.selectorLabels" -}}
app.kubernetes.io/name: access-control
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
