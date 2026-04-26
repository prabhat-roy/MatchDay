{{- define "fan-bff.name" -}}{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}{{- end -}}
{{- define "fan-bff.fullname" -}}{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}{{- end -}}
{{- define "fan-bff.serviceAccountName" -}}{{- if .Values.serviceAccount.create -}}{{- include "fan-bff.fullname" . -}}{{- else -}}{{- default "default" .Values.serviceAccount.name -}}{{- end -}}{{- end -}}
{{- define "fan-bff.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "fan-bff.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: matchday
matchday.io/domain: platform
{{- end -}}
{{- define "fan-bff.selectorLabels" -}}
app.kubernetes.io/name: {{ include "fan-bff.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
