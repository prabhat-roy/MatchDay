{{- define "club-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "club-sso.labels" -}}
app.kubernetes.io/name: club-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: identity
{{- end -}}

{{- define "club-sso.selectorLabels" -}}
app.kubernetes.io/name: club-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
