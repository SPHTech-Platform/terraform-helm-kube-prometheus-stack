# Terraform Modules Template

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.kube_prometheus_stack](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | Helm chart name to provision | `string` | `"kube-prometheus-stack"` | no |
| <a name="input_chart_namespace"></a> [chart\_namespace](#input\_chart\_namespace) | Namespace to install the chart into | `string` | `"monitoring"` | no |
| <a name="input_chart_repository"></a> [chart\_repository](#input\_chart\_repository) | Helm repository for the chart | `string` | `"https://prometheus-community.github.io/helm-charts"` | no |
| <a name="input_chart_timeout"></a> [chart\_timeout](#input\_chart\_timeout) | Timeout to wait for the Chart to be deployed. | `number` | `300` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of Chart to install. Set to empty to install the latest version | `string` | `"41.7.1"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster Name where Grafana is deployed | `string` | `""` | no |
| <a name="input_cluster_oidc_issuer_arn"></a> [cluster\_oidc\_issuer\_arn](#input\_cluster\_oidc\_issuer\_arn) | Cluster OIDC URL | `string` | `""` | no |
| <a name="input_cluster_oidc_issuer_url"></a> [cluster\_oidc\_issuer\_url](#input\_cluster\_oidc\_issuer\_url) | Cluster OIDC URL | `string` | `""` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Namespace to install the chart into | `bool` | `false` | no |
| <a name="input_grafana_admin_password_key"></a> [grafana\_admin\_password\_key](#input\_grafana\_admin\_password\_key) | Key in the secret containing the admin password | `string` | `"admin-password"` | no |
| <a name="input_grafana_affinity"></a> [grafana\_affinity](#input\_grafana\_affinity) | Pod affinity | `map(any)` | `{}` | no |
| <a name="input_grafana_annotations"></a> [grafana\_annotations](#input\_grafana\_annotations) | Deployment annotations | `map(any)` | `{}` | no |
| <a name="input_grafana_command"></a> [grafana\_command](#input\_grafana\_command) | Define command to be executed at startup by grafana container | `list(any)` | `[]` | no |
| <a name="input_grafana_dashboard_providers"></a> [grafana\_dashboard\_providers](#input\_grafana\_dashboard\_providers) | YAML string to configure grafana dashboard providersref: http://docs.grafana.org/administration/provisioning/#dashboards `path` must be /var/lib/grafana/dashboards/<provider\_name> | `string` | `""` | no |
| <a name="input_grafana_dashboards"></a> [grafana\_dashboards](#input\_grafana\_dashboards) | YAML string to configure grafana dashboard to import | `string` | `""` | no |
| <a name="input_grafana_dashboards_config_maps"></a> [grafana\_dashboards\_config\_maps](#input\_grafana\_dashboards\_config\_maps) | Reference to external ConfigMap per provider. Use provider name as key and ConfiMap name as value. YAML string | `string` | `""` | no |
| <a name="input_grafana_datasources"></a> [grafana\_datasources](#input\_grafana\_datasources) | YAML string to configure grafana datasources http://docs.grafana.org/administration/provisioning/#datasources | `string` | `""` | no |
| <a name="input_grafana_enable_service_links"></a> [grafana\_enable\_service\_links](#input\_grafana\_enable\_service\_links) | Inject Kubernetes services as environment variables. | `bool` | `true` | no |
| <a name="input_grafana_env"></a> [grafana\_env](#input\_grafana\_env) | Extra environment variables that will be pass onto deployment pods | `map(any)` | `{}` | no |
| <a name="input_grafana_env_from_secret"></a> [grafana\_env\_from\_secret](#input\_grafana\_env\_from\_secret) | The name of a secret in the same kubernetes namespace which contain values to be added to the environment | `string` | `""` | no |
| <a name="input_grafana_extra_configmap_mounts"></a> [grafana\_extra\_configmap\_mounts](#input\_grafana\_extra\_configmap\_mounts) | Extra ConfigMap to mount into the Container | `list(any)` | `[]` | no |
| <a name="input_grafana_extra_containers"></a> [grafana\_extra\_containers](#input\_grafana\_extra\_containers) | YAML string for extra containers | `string` | `""` | no |
| <a name="input_grafana_extra_empty_dir_mounts"></a> [grafana\_extra\_empty\_dir\_mounts](#input\_grafana\_extra\_empty\_dir\_mounts) | Extra Empty DIRs to mount into the Container | `list(any)` | `[]` | no |
| <a name="input_grafana_extra_init_containers"></a> [grafana\_extra\_init\_containers](#input\_grafana\_extra\_init\_containers) | Extra init containers | `list(any)` | `[]` | no |
| <a name="input_grafana_extra_secret_mounts"></a> [grafana\_extra\_secret\_mounts](#input\_grafana\_extra\_secret\_mounts) | Additional grafana server secret mounts | `list(any)` | `[]` | no |
| <a name="input_grafana_extra_volume_mounts"></a> [grafana\_extra\_volume\_mounts](#input\_grafana\_extra\_volume\_mounts) | Additional grafana server volume mounts | `list(any)` | `[]` | no |
| <a name="input_grafana_image_pull_policy"></a> [grafana\_image\_pull\_policy](#input\_grafana\_image\_pull\_policy) | Image Pull Policy for Grafana | `string` | `"IfNotPresent"` | no |
| <a name="input_grafana_image_repository"></a> [grafana\_image\_repository](#input\_grafana\_image\_repository) | Grafana Image repository on Dockerhub | `string` | `"grafana/grafana"` | no |
| <a name="input_grafana_image_tag"></a> [grafana\_image\_tag](#input\_grafana\_image\_tag) | Grafana Image tag | `string` | `"9.2.3"` | no |
| <a name="input_grafana_ingress_annotations"></a> [grafana\_ingress\_annotations](#input\_grafana\_ingress\_annotations) | Annotations for ingress | `map(any)` | `{}` | no |
| <a name="input_grafana_ingress_enabled"></a> [grafana\_ingress\_enabled](#input\_grafana\_ingress\_enabled) | Enable Ingress | `bool` | `false` | no |
| <a name="input_grafana_ingress_hosts"></a> [grafana\_ingress\_hosts](#input\_grafana\_ingress\_hosts) | Hosts for ingress | `list(any)` | `[]` | no |
| <a name="input_grafana_ingress_labels"></a> [grafana\_ingress\_labels](#input\_grafana\_ingress\_labels) | Labels for ingress | `map(any)` | `{}` | no |
| <a name="input_grafana_ingress_tls"></a> [grafana\_ingress\_tls](#input\_grafana\_ingress\_tls) | TLS configuration for ingress | `list(any)` | `[]` | no |
| <a name="input_grafana_init_chown_data_enabled"></a> [grafana\_init\_chown\_data\_enabled](#input\_grafana\_init\_chown\_data\_enabled) | Enable the Chown init container | `bool` | `true` | no |
| <a name="input_grafana_init_chown_data_resources"></a> [grafana\_init\_chown\_data\_resources](#input\_grafana\_init\_chown\_data\_resources) | Resources for the Chown init container | `map(any)` | `{}` | no |
| <a name="input_grafana_ldap_config"></a> [grafana\_ldap\_config](#input\_grafana\_ldap\_config) | String with contents for LDAP configuration in TOML | `string` | `""` | no |
| <a name="input_grafana_ldap_existing_secret"></a> [grafana\_ldap\_existing\_secret](#input\_grafana\_ldap\_existing\_secret) | Use an existing secret for LDAP config | `string` | `""` | no |
| <a name="input_grafana_main_config"></a> [grafana\_main\_config](#input\_grafana\_main\_config) | Main Config file in YAML | `string` | `"paths:\n  data: /var/lib/grafana/data\n  logs: /var/log/grafana\n  plugins: /var/lib/grafana/plugins\n  provisioning: /etc/grafana/provisioning\nanalytics:\n  check_for_updates: true\nlog:\n  mode: console\ngrafana_net:\n  url: https://grafana.netn"` | no |
| <a name="input_grafana_node_selector"></a> [grafana\_node\_selector](#input\_grafana\_node\_selector) | Node selector for Pods | `map(any)` | `{}` | no |
| <a name="input_grafana_notifiers"></a> [grafana\_notifiers](#input\_grafana\_notifiers) | YAML string to configure notifiers http://docs.grafana.org/administration/provisioning/#alert-notification-channels | `string` | `""` | no |
| <a name="input_grafana_pdb"></a> [grafana\_pdb](#input\_grafana\_pdb) | PodDisruptionBudget for Grafana | `map(any)` | <pre>{<br>  "minAvailable": 1<br>}</pre> | no |
| <a name="input_grafana_persistence_annotations"></a> [grafana\_persistence\_annotations](#input\_grafana\_persistence\_annotations) | Annotations for the PV | `map(any)` | `{}` | no |
| <a name="input_grafana_persistence_enabled"></a> [grafana\_persistence\_enabled](#input\_grafana\_persistence\_enabled) | Enable PV | `bool` | `false` | no |
| <a name="input_grafana_persistence_existing_claim"></a> [grafana\_persistence\_existing\_claim](#input\_grafana\_persistence\_existing\_claim) | Use an existing PVC | `string` | `""` | no |
| <a name="input_grafana_persistence_size"></a> [grafana\_persistence\_size](#input\_grafana\_persistence\_size) | Size of the PV | `string` | `"10Gi"` | no |
| <a name="input_grafana_persistence_storage_class_name"></a> [grafana\_persistence\_storage\_class\_name](#input\_grafana\_persistence\_storage\_class\_name) | Storage Class name for the PV | `string` | `"default"` | no |
| <a name="input_grafana_plugins"></a> [grafana\_plugins](#input\_grafana\_plugins) | List of plugins to install | `list(any)` | `[]` | no |
| <a name="input_grafana_pod_annotations"></a> [grafana\_pod\_annotations](#input\_grafana\_pod\_annotations) | Pod annotations | `map(any)` | `{}` | no |
| <a name="input_grafana_priority_class_name"></a> [grafana\_priority\_class\_name](#input\_grafana\_priority\_class\_name) | Priority Class name for Grafana | `string` | `""` | no |
| <a name="input_grafana_psp_enable"></a> [grafana\_psp\_enable](#input\_grafana\_psp\_enable) | Enable PSP | `bool` | `true` | no |
| <a name="input_grafana_psp_use_app_armor"></a> [grafana\_psp\_use\_app\_armor](#input\_grafana\_psp\_use\_app\_armor) | Use AppAmor in the PSP | `bool` | `true` | no |
| <a name="input_grafana_resources"></a> [grafana\_resources](#input\_grafana\_resources) | Resources for Grafana container | `map(any)` | `{}` | no |
| <a name="input_grafana_security_context"></a> [grafana\_security\_context](#input\_grafana\_security\_context) | Security context for pods defined as a map which will be serialized to JSON. | `any` | <pre>{<br>  "fsGroup": 472,<br>  "runAsGroup": 472,<br>  "runAsUser": 472<br>}</pre> | no |
| <a name="input_grafana_service_account"></a> [grafana\_service\_account](#input\_grafana\_service\_account) | Name of the Service Account for Grafana | `string` | `""` | no |
| <a name="input_grafana_service_account_annotations"></a> [grafana\_service\_account\_annotations](#input\_grafana\_service\_account\_annotations) | Annotations for service account | `map(any)` | `{}` | no |
| <a name="input_grafana_service_annotations"></a> [grafana\_service\_annotations](#input\_grafana\_service\_annotations) | Annotations for the service | `map(any)` | `{}` | no |
| <a name="input_grafana_service_labels"></a> [grafana\_service\_labels](#input\_grafana\_service\_labels) | Labels for the service | `map(any)` | `{}` | no |
| <a name="input_grafana_service_port"></a> [grafana\_service\_port](#input\_grafana\_service\_port) | Port of the service | `number` | `80` | no |
| <a name="input_grafana_service_target_port"></a> [grafana\_service\_target\_port](#input\_grafana\_service\_target\_port) | Port in container to expose service | `number` | `3000` | no |
| <a name="input_grafana_service_type"></a> [grafana\_service\_type](#input\_grafana\_service\_type) | Service type | `string` | `"ClusterIP"` | no |
| <a name="input_grafana_smtp_existing_secret"></a> [grafana\_smtp\_existing\_secret](#input\_grafana\_smtp\_existing\_secret) | Existing secret containing the SMTP credentials | `string` | `""` | no |
| <a name="input_grafana_smtp_password_key"></a> [grafana\_smtp\_password\_key](#input\_grafana\_smtp\_password\_key) | Key in the secret containing the SMTP password | `string` | `"password"` | no |
| <a name="input_grafana_smtp_user_key"></a> [grafana\_smtp\_user\_key](#input\_grafana\_smtp\_user\_key) | Key in the secret containing the SMTP username | `string` | `"user"` | no |
| <a name="input_grafana_tolerations"></a> [grafana\_tolerations](#input\_grafana\_tolerations) | Tolerations for pods | `list(any)` | `[]` | no |
| <a name="input_image_renderer_annotations"></a> [image\_renderer\_annotations](#input\_image\_renderer\_annotations) | image-renderer deployment annotations | `map(any)` | `{}` | no |
| <a name="input_image_renderer_enabled"></a> [image\_renderer\_enabled](#input\_image\_renderer\_enabled) | Enable the image-renderer deployment and service | `bool` | `true` | no |
| <a name="input_image_renderer_env"></a> [image\_renderer\_env](#input\_image\_renderer\_env) | image-renderer extra environment variables | `map(any)` | <pre>{<br>  "HTTP_HOST": "0.0.0.0"<br>}</pre> | no |
| <a name="input_image_renderer_image_repository"></a> [image\_renderer\_image\_repository](#input\_image\_renderer\_image\_repository) | image-renderer Image repository | `string` | `"grafana/grafana-image-renderer"` | no |
| <a name="input_image_renderer_image_tag"></a> [image\_renderer\_image\_tag](#input\_image\_renderer\_image\_tag) | image-renderer Image tag | `string` | `"latest"` | no |
| <a name="input_image_renderer_pod_annotations"></a> [image\_renderer\_pod\_annotations](#input\_image\_renderer\_pod\_annotations) | image-renderer pod annotations | `map(any)` | `{}` | no |
| <a name="input_image_renderer_port"></a> [image\_renderer\_port](#input\_image\_renderer\_port) | image-renderer service port used by both service and deployment | `number` | `8081` | no |
| <a name="input_image_renderer_priority_class_name"></a> [image\_renderer\_priority\_class\_name](#input\_image\_renderer\_priority\_class\_name) | image-renderer deployment priority class | `string` | `""` | no |
| <a name="input_image_renderer_replicas"></a> [image\_renderer\_replicas](#input\_image\_renderer\_replicas) | Number of replicas of image-renderer to run | `number` | `1` | no |
| <a name="input_image_renderer_resources"></a> [image\_renderer\_resources](#input\_image\_renderer\_resources) | Resources for image-renderer container | `map(any)` | `{}` | no |
| <a name="input_image_renderer_security_context"></a> [image\_renderer\_security\_context](#input\_image\_renderer\_security\_context) | image-renderer deployment securityContext | `any` | `{}` | no |
| <a name="input_image_renderer_service_account"></a> [image\_renderer\_service\_account](#input\_image\_renderer\_service\_account) | image-renderer deployment serviceAccount | `string` | `""` | no |
| <a name="input_image_renderer_target_port"></a> [image\_renderer\_target\_port](#input\_image\_renderer\_target\_port) | image-renderer service targetPort used by both service and deployment | `number` | `8081` | no |
| <a name="input_max_history"></a> [max\_history](#input\_max\_history) | Max History for Helm | `number` | `20` | no |
| <a name="input_prometheus_alertmanager_nodeselector"></a> [prometheus\_alertmanager\_nodeselector](#input\_prometheus\_alertmanager\_nodeselector) | Alertmanager Spec node selector | `any` | `""` | no |
| <a name="input_prometheus_host_url"></a> [prometheus\_host\_url](#input\_prometheus\_host\_url) | Prometheus Host URL | `string` | `""` | no |
| <a name="input_prometheus_image_repository"></a> [prometheus\_image\_repository](#input\_prometheus\_image\_repository) | Prometheus Image repository | `string` | `"quay.io/prometheus/prometheus"` | no |
| <a name="input_prometheus_image_tag"></a> [prometheus\_image\_tag](#input\_prometheus\_image\_tag) | Prometheus Image tag | `string` | `"v2.39.1"` | no |
| <a name="input_prometheus_ingress_annotations"></a> [prometheus\_ingress\_annotations](#input\_prometheus\_ingress\_annotations) | Annotations for ingress | `map(any)` | `{}` | no |
| <a name="input_prometheus_ingress_enabled"></a> [prometheus\_ingress\_enabled](#input\_prometheus\_ingress\_enabled) | Enable Ingress | `bool` | `false` | no |
| <a name="input_prometheus_ingress_hosts"></a> [prometheus\_ingress\_hosts](#input\_prometheus\_ingress\_hosts) | Hosts for ingress | `list(any)` | `[]` | no |
| <a name="input_prometheus_ingress_labels"></a> [prometheus\_ingress\_labels](#input\_prometheus\_ingress\_labels) | Labels for ingress | `map(any)` | `{}` | no |
| <a name="input_prometheus_ingress_tls"></a> [prometheus\_ingress\_tls](#input\_prometheus\_ingress\_tls) | TLS configuration for ingress | `list(any)` | `[]` | no |
| <a name="input_prometheus_nodeselector"></a> [prometheus\_nodeselector](#input\_prometheus\_nodeselector) | prometheus Spec node selector | `any` | `""` | no |
| <a name="input_prometheus_operator_image_repository"></a> [prometheus\_operator\_image\_repository](#input\_prometheus\_operator\_image\_repository) | Prometheus Operator Image repository | `string` | `"quay.io/prometheus-operator/prometheus-operator"` | no |
| <a name="input_prometheus_operator_image_tag"></a> [prometheus\_operator\_image\_tag](#input\_prometheus\_operator\_image\_tag) | Prometheus Operator Image Tag | `string` | `"v0.60.1"` | no |
| <a name="input_prometheus_remote_write"></a> [prometheus\_remote\_write](#input\_prometheus\_remote\_write) | Write samples from Prometheus to a remote endpoint | `any` | <pre>{<br>  "queue_config": {<br>    "capacity": 2500,<br>    "max_samples_per_send": 1000,<br>    "max_shards": 200<br>  },<br>  "sigv4": {<br>    "region": "ap-southeast-1",<br>    "role_arn": "arn:aws:iam::XXXXXXXXX:role/tenant-XXXXXXXXXXX-customerclustertrustrole45CE3A-1PKMAVG0ZXNS3"<br>  },<br>  "url": "https://aps-workspaces.ap-southeast-1.amazonaws.com/workspaces/ws-44e4207c-a58f-db7c91e96fba/api/v1/remote_write"<br>}</pre> | no |
| <a name="input_prometheus_service_account"></a> [prometheus\_service\_account](#input\_prometheus\_service\_account) | Name of the Service Account for Grafana | `string` | `""` | no |
| <a name="input_prometheus_service_account_annotations"></a> [prometheus\_service\_account\_annotations](#input\_prometheus\_service\_account\_annotations) | Annotations for service account | `map(any)` | `{}` | no |
| <a name="input_promethues_operator_nodeselector"></a> [promethues\_operator\_nodeselector](#input\_promethues\_operator\_nodeselector) | Promethues Operator node selector | `any` | `""` | no |
| <a name="input_recreate_pods"></a> [recreate\_pods](#input\_recreate\_pods) | Recreate the pods with every helm update | `bool` | `false` | no |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | Helm release name | `string` | `"kube-prometheus-stack"` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | Number of replicas of Grafana to run | `number` | `1` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
