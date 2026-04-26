{{- define "video-analysis.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "video-analysis.labels" -}}
app.kubernetes.io/name: video-analysis
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: performance
{{- end -}}

{{- define "video-analysis.selectorLabels" -}}
app.kubernetes.io/name: video-analysis
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
