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
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of Chart to install. Set to empty to install the latest version | `string` | `"36.2.1"` | no |
| <a name="input_grafana_admin_password"></a> [grafana\_admin\_password](#input\_grafana\_admin\_password) | Grafana Admin Password | `string` | n/a | yes |
| <a name="input_grafana_host_url"></a> [grafana\_host\_url](#input\_grafana\_host\_url) | Grafana Host URL | `string` | `""` | no |
| <a name="input_grafana_image_repository"></a> [grafana\_image\_repository](#input\_grafana\_image\_repository) | Grafana Image repository on Dockerhub | `string` | `"grafana/grafana"` | no |
| <a name="input_grafana_image_tag"></a> [grafana\_image\_tag](#input\_grafana\_image\_tag) | Grafana Image tag | `string` | `"9.0.2"` | no |
| <a name="input_grafana_okta_api_url"></a> [grafana\_okta\_api\_url](#input\_grafana\_okta\_api\_url) | OKTA API URL for Grafana | `string` | `""` | no |
| <a name="input_grafana_okta_auth_url"></a> [grafana\_okta\_auth\_url](#input\_grafana\_okta\_auth\_url) | OKTA Auth URL for Grafana | `string` | `""` | no |
| <a name="input_grafana_okta_client_id"></a> [grafana\_okta\_client\_id](#input\_grafana\_okta\_client\_id) | OKTA Client ID for Grafana | `string` | n/a | yes |
| <a name="input_grafana_okta_client_secret"></a> [grafana\_okta\_client\_secret](#input\_grafana\_okta\_client\_secret) | OKTA Client Secret for Grafana | `string` | n/a | yes |
| <a name="input_grafana_okta_token_url"></a> [grafana\_okta\_token\_url](#input\_grafana\_okta\_token\_url) | OKTA Token URL for Grafana | `string` | `""` | no |
| <a name="input_grafana_s3_image_bucket"></a> [grafana\_s3\_image\_bucket](#input\_grafana\_s3\_image\_bucket) | Grafana S3 image bucket | `string` | `""` | no |
| <a name="input_grafana_s3_image_bucket_region"></a> [grafana\_s3\_image\_bucket\_region](#input\_grafana\_s3\_image\_bucket\_region) | Region of the Grafana S3 image bucket | `string` | `""` | no |
| <a name="input_grafana_server_root_url"></a> [grafana\_server\_root\_url](#input\_grafana\_server\_root\_url) | Grafana Server Root URL | `string` | `""` | no |
| <a name="input_max_history"></a> [max\_history](#input\_max\_history) | Max History for Helm | `number` | `20` | no |
| <a name="input_prometheus_host_url"></a> [prometheus\_host\_url](#input\_prometheus\_host\_url) | Prometheus Host URL | `string` | `""` | no |
| <a name="input_prometheus_image_repository"></a> [prometheus\_image\_repository](#input\_prometheus\_image\_repository) | Prometheus Image repository | `string` | `"quay.io/prometheus/prometheus"` | no |
| <a name="input_prometheus_image_tag"></a> [prometheus\_image\_tag](#input\_prometheus\_image\_tag) | Prometheus Image tag | `string` | `"v2.36.2"` | no |
| <a name="input_prometheus_operator_image_repository"></a> [prometheus\_operator\_image\_repository](#input\_prometheus\_operator\_image\_repository) | Prometheus Operator Image repository | `string` | `"quay.io/prometheus-operator/prometheus-operator"` | no |
| <a name="input_prometheus_operator_image_tag"></a> [prometheus\_operator\_image\_tag](#input\_prometheus\_operator\_image\_tag) | Prometheus Operator Image Tag | `string` | `"v0.57.0"` | no |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | Helm release name | `string` | `"kube-prometheus-stack"` | no |
| <a name="input_smtp_from_address"></a> [smtp\_from\_address](#input\_smtp\_from\_address) | From Address which want to send emails | `string` | `""` | no |
| <a name="input_smtp_host"></a> [smtp\_host](#input\_smtp\_host) | SMTP Server Host Address | `string` | `""` | no |
| <a name="input_smtp_password"></a> [smtp\_password](#input\_smtp\_password) | SMTP Password | `string` | n/a | yes |
| <a name="input_smtp_user"></a> [smtp\_user](#input\_smtp\_user) | SMTP User | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
