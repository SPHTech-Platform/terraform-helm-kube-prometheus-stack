locals {
  values = {
    prometheus_image_repository = var.prometheus_image_repository
    prometheus_image_tag        = var.prometheus_image_tag
    prometheus_host_url         = var.prometheus_host_url

    grafana_image_repository = var.grafana_image_repository
    grafana_image_tag        = var.grafana_image_tag
    grafana_admin_password   = var.grafana_admin_password
    grafana_host_url         = var.grafana_host_url
    grafana_server_root_url  = var.grafana_server_root_url

    grafana_okta_client_id     = var.grafana_okta_client_id
    grafana_okta_client_secret = var.grafana_okta_client_secret
    grafana_okta_auth_url      = var.grafana_okta_auth_url
    grafana_okta_token_url     = var.grafana_okta_token_url
    grafana_okta_api_url       = var.grafana_okta_api_url

    prometheus_operator_image_repository = var.prometheus_operator_image_repository
    prometheus_operator_image_tag        = var.prometheus_operator_image_tag

    smtp_host         = var.smtp_host
    smtp_user         = var.smtp_user
    smtp_password     = var.smtp_password
    smtp_from_address = var.smtp_from_address
  }
}

resource "helm_release" "kube_prometheus_stack" {
  name       = var.release_name
  chart      = var.chart_name
  repository = var.chart_repository
  version    = var.chart_version
  namespace  = var.chart_namespace

  max_history = var.max_history
  timeout     = var.chart_timeout

  values = [
    templatefile("${path.module}/templates/values.yaml", local.values),
  ]
}
