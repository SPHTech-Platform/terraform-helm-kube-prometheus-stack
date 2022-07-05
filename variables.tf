variable "release_name" {
  description = "Helm release name"
  type        = string
  default     = "kube-prometheus-stack"
}

variable "chart_name" {
  description = "Helm chart name to provision"
  type        = string
  default     = "kube-prometheus-stack"
}

variable "chart_repository" {
  description = "Helm repository for the chart"
  type        = string
  default     = "https://prometheus-community.github.io/helm-charts"
}

variable "chart_version" {
  description = "Version of Chart to install. Set to empty to install the latest version"
  type        = string
  default     = "36.2.1"
}

variable "chart_namespace" {
  description = "Namespace to install the chart into"
  type        = string
  default     = "monitoring"
}

variable "chart_timeout" {
  description = "Timeout to wait for the Chart to be deployed."
  type        = number
  default     = 300
}

variable "max_history" {
  description = "Max History for Helm"
  type        = number
  default     = 20
}

########################
# Chart Values
########################

variable "prometheus_image_repository" {
  description = "Prometheus Image repository"
  type        = string
  default     = "quay.io/prometheus/prometheus"
}

variable "prometheus_image_tag" {
  description = "Prometheus Image tag"
  type        = string
  default     = "v2.36.2"
}

variable "grafana_image_repository" {
  description = "Grafana Image repository on Dockerhub"
  type        = string
  default     = "grafana/grafana"
}

variable "grafana_image_tag" {
  description = "Grafana Image tag"
  type        = string
  default     = "9.0.2"
}

variable "grafana_admin_password" {
  description = "Grafana Admin Password"
  type        = string
  sensitive   = true
}

variable "grafana_okta_client_id" {
  description = "OKTA Client ID for Grafana"
  type        = string
  sensitive   = true
}

variable "grafana_okta_client_secret" {
  description = "OKTA Client Secret for Grafana"
  type        = string
  sensitive   = true
}

variable "prometheus_operator_image_repository" {
  description = "Prometheus Operator Image repository"
  type        = string
  default     = "quay.io/prometheus-operator/prometheus-operator"
}

variable "prometheus_operator_image_tag" {
  description = "Prometheus Operator Image Tag"
  type        = string
  default     = "v0.57.0"
}

variable "resources_driver" {
  description = "Driver Resources"
  type        = map(any)
  default = {
    requests = {
      cpu    = "200m"
      memory = "200Mi"
    }
    limits = {
      cpu    = "200m"
      memory = "200Mi"
    }
  }
}

variable "resources_registrar" {
  description = "Registrar Resources"
  type        = map(any)
  default = {
    requests = {
      cpu    = "100m"
      memory = "100Mi"
    }
    limits = {
      cpu    = "100m"
      memory = "100Mi"
    }
  }
}

variable "resources_liveness" {
  description = "LivenessProbe Resources"
  type        = map(any)
  default = {
    requests = {
      cpu    = "100m"
      memory = "100Mi"
    }
    limits = {
      cpu    = "100m"
      memory = "100Mi"
    }
  }
}
