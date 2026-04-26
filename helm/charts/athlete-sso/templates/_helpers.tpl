{{- define "athlete-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "athlete-sso.labels" -}}
app.kubernetes.io/name: athlete-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: identity
{{- end -}}

{{- define "athlete-sso.selectorLabels" -}}
app.kubernetes.io/name: athlete-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
