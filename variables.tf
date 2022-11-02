###############################
######### Helm Release ########
###############################

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
  default     = "41.7.1"
}

variable "chart_namespace" {
  description = "Namespace to install the chart into"
  type        = string
  default     = "monitoring"
}

variable "create_namespace" {
  description = "Namespace to install the chart into"
  type        = bool
  default     = false
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

variable "recreate_pods" {
  description = "Recreate the pods with every helm update"
  type        = bool
  default     = false
}

###############################
### Prometheus Chart Values ###
###############################

variable "prometheus_image_repository" {
  description = "Prometheus Image repository"
  type        = string
  default     = "quay.io/prometheus/prometheus"
}

variable "prometheus_image_tag" {
  description = "Prometheus Image tag"
  type        = string
  default     = "v2.39.1"
}

variable "prometheus_host_url" {
  description = "Prometheus Host URL"
  type        = string
  default     = ""
}

variable "prometheus_service_account" {
  description = "Name of the Service Account for Grafana"
  type        = string
  default     = ""
}

variable "prometheus_service_account_annotations" {
  description = "Annotations for service account"
  type        = map(any)
  default     = {}
}

### prometheus Ingress ###
variable "prometheus_ingress_enabled" {
  description = "Enable Ingress"
  type        = bool
  default     = false
}

variable "prometheus_ingress_annotations" {
  description = "Annotations for ingress"
  type        = map(any)
  default     = {}
}

variable "prometheus_ingress_labels" {
  description = "Labels for ingress"
  type        = map(any)
  default     = {}
}

variable "prometheus_ingress_hosts" {
  description = "Hosts for ingress"
  type        = list(any)
  default     = []
}

variable "prometheus_ingress_tls" {
  description = "TLS configuration for ingress"
  type        = list(any)
  default     = []
}

variable "prometheus_operator_image_repository" {
  description = "Prometheus Operator Image repository"
  type        = string
  default     = "quay.io/prometheus-operator/prometheus-operator"
}

variable "prometheus_operator_image_tag" {
  description = "Prometheus Operator Image Tag"
  type        = string
  default     = "v0.60.1"
}

variable "promethues_operator_nodeSelector" {
  description = "Promethues Operator node selector"
  type        = any
  default     = ""
}

variable "prometheus_alertmanagerSpec_nodeSelector" {
  description = "Alertmanager Spec node selector"
  type        = any
  default     = ""
}

variable "prometheusSpec_nodeSelector" {
  description = "prometheus Spec node selector"
  type        = any
  default     = ""
}

###########################################
######## GRAFANA LOCALS & VARIABLE ########
###########################################
variable "replicas" {
  description = "Number of replicas of Grafana to run"
  type        = number
  default     = 1
}

variable "grafana_image_repository" {
  description = "Grafana Image repository on Dockerhub"
  type        = string
  default     = "grafana/grafana"
}

variable "grafana_image_tag" {
  description = "Grafana Image tag"
  type        = string
  default     = "9.2.3"
}

variable "grafana_image_pull_policy" {
  description = "Image Pull Policy for Grafana"
  type        = string
  default     = "IfNotPresent"
}

variable "grafana_service_account" {
  description = "Name of the Service Account for Grafana"
  type        = string
  default     = ""
}

variable "grafana_service_account_annotations" {
  description = "Annotations for service account"
  type        = map(any)
  default     = {}
}

### Grafana RBAC ###
variable "grafana_psp_enable" {
  description = "Enable PSP"
  type        = bool
  default     = true
}

variable "grafana_psp_use_app_armor" {
  description = "Use AppAmor in the PSP"
  type        = bool
  default     = true
}

variable "grafana_pdb" {
  description = "PodDisruptionBudget for Grafana"
  type        = map(any)
  default = {
    minAvailable = 1
  }
}

variable "grafana_command" {
  description = "Define command to be executed at startup by grafana container"
  type        = list(any)
  default     = []
}

variable "grafana_extra_configmap_mounts" {
  description = "Extra ConfigMap to mount into the Container"
  type        = list(any)
  default     = []
}

variable "grafana_extra_empty_dir_mounts" {
  description = "Extra Empty DIRs to mount into the Container"
  type        = list(any)
  default     = []
}

variable "grafana_priority_class_name" {
  description = "Priority Class name for Grafana"
  type        = string
  default     = ""
}

variable "grafana_pod_annotations" {
  description = "Pod annotations"
  type        = map(any)
  default     = {}
}

variable "grafana_annotations" {
  description = "Deployment annotations"
  type        = map(any)
  default     = {}
}

variable "grafana_resources" {
  description = "Resources for Grafana container"
  type        = map(any)
  default     = {}
}

variable "grafana_node_selector" {
  description = "Node selector for Pods"
  type        = map(any)
  default     = {}
}

variable "grafana_tolerations" {
  description = "Tolerations for pods"
  type        = list(any)
  default     = []
}

variable "grafana_affinity" {
  description = "Pod affinity"
  type        = map(any)
  default     = {}
}

variable "grafana_security_context" {
  description = "Security context for pods defined as a map which will be serialized to JSON."
  type        = any
  default = {
    runAsGroup = 472
    runAsUser  = 472
    fsGroup    = 472
  }
}

variable "grafana_env" {
  description = "Extra environment variables that will be pass onto deployment pods"
  type        = map(any)
  default     = {}
}

variable "grafana_env_from_secret" {
  description = "The name of a secret in the same kubernetes namespace which contain values to be added to the environment"
  type        = string
  default     = ""
}

variable "grafana_extra_secret_mounts" {
  description = "Additional grafana server secret mounts"
  type        = list(any)
  default     = []
}

variable "grafana_extra_volume_mounts" {
  description = "Additional grafana server volume mounts"
  type        = list(any)
  default     = []
}

variable "grafana_enable_service_links" {
  description = "Inject Kubernetes services as environment variables."
  type        = bool
  default     = true
}

variable "grafana_service_type" {
  description = "Service type"
  type        = string
  default     = "ClusterIP"
}

variable "grafana_service_port" {
  description = "Port of the service"
  type        = number
  default     = 80
}

variable "grafana_service_target_port" {
  description = "Port in container to expose service"
  type        = number
  default     = 3000
}

variable "grafana_service_annotations" {
  description = "Annotations for the service"
  type        = map(any)
  default     = {}
}

variable "grafana_service_labels" {
  description = "Labels for the service"
  type        = map(any)
  default     = {}
}

### Grafana Ingress ###
variable "grafana_ingress_enabled" {
  description = "Enable Ingress"
  type        = bool
  default     = false
}

variable "grafana_ingress_annotations" {
  description = "Annotations for ingress"
  type        = map(any)
  default     = {}
}

variable "grafana_ingress_labels" {
  description = "Labels for ingress"
  type        = map(any)
  default     = {}
}

variable "grafana_ingress_hosts" {
  description = "Hosts for ingress"
  type        = list(any)
  default     = []
}

variable "grafana_ingress_tls" {
  description = "TLS configuration for ingress"
  type        = list(any)
  default     = []
}

variable "grafana_extra_init_containers" {
  description = "Extra init containers"
  type        = list(any)
  default     = []
}

variable "grafana_extra_containers" {
  description = "YAML string for extra containers"
  type        = string
  default     = ""
}

variable "grafana_persistence_enabled" {
  description = "Enable PV"
  type        = bool
  default     = false
}

variable "grafana_persistence_size" {
  description = "Size of the PV"
  type        = string
  default     = "10Gi"
}

variable "grafana_persistence_storage_class_name" {
  description = "Storage Class name for the PV"
  type        = string
  default     = "default"
}

variable "grafana_persistence_annotations" {
  description = "Annotations for the PV"
  type        = map(any)
  default     = {}
}

variable "grafana_persistence_existing_claim" {
  description = "Use an existing PVC"
  type        = string
  default     = ""
}

variable "grafana_init_chown_data_enabled" {
  description = "Enable the Chown init container"
  type        = bool
  default     = true
}

variable "grafana_init_chown_data_resources" {
  description = "Resources for the Chown init container"
  type        = map(any)
  default     = {}
}

variable "grafana_plugins" {
  description = "List of plugins to install"
  type        = list(any)
  default     = []
}

variable "grafana_datasources" {
  description = "YAML string to configure grafana datasources http://docs.grafana.org/administration/provisioning/#datasources"
  type        = string
  default     = ""
}

variable "grafana_notifiers" {
  description = "YAML string to configure notifiers http://docs.grafana.org/administration/provisioning/#alert-notification-channels"
  type        = string
  default     = ""
}

variable "grafana_dashboard_providers" {
  description = "YAML string to configure grafana dashboard providersref: http://docs.grafana.org/administration/provisioning/#dashboards `path` must be /var/lib/grafana/dashboards/<provider_name>"
  type        = string
  default     = ""
}

variable "grafana_dashboards" {
  description = "YAML string to configure grafana dashboard to import"
  type        = string
  default     = ""
}

variable "grafana_dashboards_config_maps" {
  description = "Reference to external ConfigMap per provider. Use provider name as key and ConfiMap name as value. YAML string"
  type        = string
  default     = ""
}

### Grafana Main Config ###
variable "grafana_main_config" {
  description = "Main Config file in YAML"
  type        = string

  default = <<EOF
paths:
  data: /var/lib/grafana/data
  logs: /var/log/grafana
  plugins: /var/lib/grafana/plugins
  provisioning: /etc/grafana/provisioning
analytics:
  check_for_updates: true
log:
  mode: console
grafana_net:
  url: https://grafana.net
EOF
}

variable "grafana_okta_enabled" {
  description = "okta config to enable"
  type        = bool
  default     = false
}

variable "grafana_oauth_client_id" {
  description = "client_id of the App"
  type        = string
  default     = ""
}

variable "grafana_oauth_client_secret" {
  description = "client_secret between app and authorisation server"
  type        = string
  default     = ""
}

### CLUSTER Config where grafana is deployed ###
variable "cluster_name" {
  description = "Cluster Name where Grafana is deployed"
  type        = string
  default     = ""
}

variable "cluster_oidc_issuer_url" {
  description = "Cluster OIDC URL"
  type        = string
  default     = ""
}

variable "cluster_oidc_issuer_arn" {
  description = "Cluster OIDC URL"
  type        = string
  default     = ""
}

### Grafana LDAP Config ###
variable "grafana_ldap_existing_secret" {
  description = "Use an existing secret for LDAP config"
  type        = string
  default     = ""
}

variable "grafana_ldap_config" {
  description = "String with contents for LDAP configuration in TOML"
  type        = string
  default     = ""
}

### SMTP config of grafana ###
variable "grafana_smtp_existing_secret" {
  description = "Existing secret containing the SMTP credentials"
  type        = string
  default     = ""
}

variable "grafana_smtp_user_key" {
  description = "Key in the secret containing the SMTP username"
  type        = string
  default     = "user"
}

variable "grafana_smtp_password_key" {
  description = "Key in the secret containing the SMTP password"
  type        = string
  default     = "password"
}

variable "grafana_admin_password_key" {
  description = "Key in the secret containing the admin password"
  type        = string
  default     = "admin-password"
}

### Grafana Image Rendered ###
variable "image_renderer_enabled" {
  description = "Enable the image-renderer deployment and service"
  type        = bool
  default     = true
}

variable "image_renderer_replicas" {
  description = "Number of replicas of image-renderer to run"
  type        = number
  default     = 1
}

variable "image_renderer_image_repository" {
  description = "image-renderer Image repository"
  type        = string
  default     = "grafana/grafana-image-renderer"
}

variable "image_renderer_image_tag" {
  description = "image-renderer Image tag"
  type        = string
  default     = "latest"
}

variable "image_renderer_env" {
  description = "image-renderer extra environment variables"
  type        = map(any)
  default = {
    HTTP_HOST = "0.0.0.0"
  }
}

variable "image_renderer_service_account" {
  description = "image-renderer deployment serviceAccount"
  type        = string
  default     = ""
}

variable "image_renderer_priority_class_name" {
  description = "image-renderer deployment priority class"
  type        = string
  default     = ""
}

variable "image_renderer_security_context" {
  description = "image-renderer deployment securityContext"
  type        = any
  default     = {}
}

variable "image_renderer_port" {
  description = "image-renderer service port used by both service and deployment"
  type        = number
  default     = 8081
}

variable "image_renderer_target_port" {
  description = "image-renderer service targetPort used by both service and deployment"
  type        = number
  default     = 8081
}

variable "image_renderer_resources" {
  description = "Resources for image-renderer container"
  type        = map(any)
  default     = {}
}

variable "image_renderer_annotations" {
  description = "image-renderer deployment annotations"
  type        = map(any)
  default     = {}
}

variable "image_renderer_pod_annotations" {
  description = "image-renderer pod annotations"
  type        = map(any)
  default     = {}
}
