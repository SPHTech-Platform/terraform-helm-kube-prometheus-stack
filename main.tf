locals {
  values = {
    prometheus_image_repository = var.prometheus_image_repository
    prometheus_image_tag        = var.prometheus_image_tag

    grafana_image_repository   = var.grafana_image_repository
    grafana_image_tag          = var.grafana_image_tag
    grafana_admin_password     = var.grafana_admin_password
    grafana_okta_client_id     = var.grafana_okta_client_id
    grafana_okta_client_secret = var.grafana_okta_client_secret

    prometheus_operator_image_repository = var.prometheus_operator_image_repository
    prometheus_operator_image_tag        = var.prometheus_operator_image_tag

    resources_driver    = jsonencode(var.resources_driver)
    resources_registrar = jsonencode(var.resources_registrar)
    resources_liveness  = jsonencode(var.resources_liveness)

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
