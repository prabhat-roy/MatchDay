{{- define "development-pathway.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "development-pathway.labels" -}}
app.kubernetes.io/name: development-pathway
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: academy
{{- end -}}

{{- define "development-pathway.selectorLabels" -}}
app.kubernetes.io/name: development-pathway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
