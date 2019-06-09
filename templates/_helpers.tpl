{{/* vim: set filetype=mustache: */}}

{{/*
Create fully qualified names.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "master-fullname" -}}
{{- $name := default .Chart.Name spark .Values.Master.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "webui-fullname" -}}
{{- $name := default .Chart.Name spark .Values.WebUi.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "worker-fullname" -}}
{{- $name := default .Chart.Name spark .Values.Worker.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "hadoop.name" -}}
{{- default .Chart.Name hadoop .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "hadoop.fullname" -}}
{{- $name := default .Chart.Name hadoop .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "hadoop.chart" -}}
{{- printf "%s-%s" .Chart.Name hadoop .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

