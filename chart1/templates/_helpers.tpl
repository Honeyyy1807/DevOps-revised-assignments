
{{- define "generic.name" -}}
{{ .Chart.Name }}
{{- end }}


{{- define "generic.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}


{{- define "generic.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}