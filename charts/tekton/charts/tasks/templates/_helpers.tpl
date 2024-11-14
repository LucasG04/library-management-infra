{{/*
Expand the name of the chart.
*/}}
{{- define "tasks.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "tasks.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "tasks.labels" -}}
helm.sh/chart: {{ include "tasks.chart" . }}
{{ include "tasks.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "tasks.selectorLabels" -}}
app.kubernetes.io/name: {{ include "tasks.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
