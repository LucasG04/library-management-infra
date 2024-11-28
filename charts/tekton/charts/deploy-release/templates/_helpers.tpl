{{/*
Expand the name of the chart.
*/}}
{{- define "deploy-release.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "deploy-release.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "deploy-release.labels" -}}
helm.sh/chart: {{ include "deploy-release.chart" . }}
{{ include "deploy-release.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "deploy-release.selectorLabels" -}}
app.kubernetes.io/name: {{ include "deploy-release.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
