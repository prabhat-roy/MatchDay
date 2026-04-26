{{- define "squad-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "squad-service.labels" -}}
app.kubernetes.io/name: squad-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: club
{{- end -}}

{{- define "squad-service.selectorLabels" -}}
app.kubernetes.io/name: squad-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
