locals {
  values = {
    prometheus_image_repository = var.prometheus_image_repository
    prometheus_image_tag        = var.prometheus_image_tag
    prometheus_host_url         = var.prometheus_host_url

    prometheus_service_account             = var.prometheus_service_account
    prometheus_service_account_annotations = jsonencode(var.prometheus_service_account_annotations)

    prometheus_ingress_enabled     = var.prometheus_ingress_enabled
    prometheus_ingress_annotations = jsonencode(var.prometheus_ingress_annotations)
    prometheus_ingress_labels      = jsonencode(var.prometheus_ingress_labels)
    prometheus_ingress_hosts       = jsonencode(var.prometheus_ingress_hosts)
    prometheus_ingress_tls         = jsonencode(var.prometheus_ingress_tls)

    prometheus_operator_image_repository = var.prometheus_operator_image_repository
    prometheus_operator_image_tag        = var.prometheus_operator_image_tag
    promethues_operator_nodeselector     = var.promethues_operator_nodeselector
    prometheus_alertmanager_nodeselector = var.prometheus_alertmanager_nodeselector
    prometheus_nodeselector              = var.prometheus_nodeselector
  }

  grafana_values = {
    replicas                  = var.replicas
    grafana_image_repository  = var.grafana_image_repository
    grafana_image_tag         = var.grafana_image_tag
    grafana_image_pull_policy = var.grafana_image_pull_policy

    grafana_service_account             = var.grafana_service_account
    grafana_service_account_annotations = jsonencode(var.grafana_service_account_annotations)

    grafana_psp_enable        = var.grafana_psp_enable
    grafana_psp_use_app_armor = var.grafana_psp_use_app_armor
    grafana_pdb               = jsonencode(var.grafana_pdb)
    grafana_command           = jsonencode(var.grafana_command)

    grafana_extra_configmap_mounts = jsonencode(var.grafana_extra_configmap_mounts)
    grafana_extra_empty_dir_mounts = jsonencode(var.grafana_extra_empty_dir_mounts)

    grafana_priority_class_name = var.grafana_priority_class_name

    grafana_pod_annotations  = jsonencode(var.grafana_pod_annotations)
    grafana_annotations      = jsonencode(var.grafana_annotations)
    grafana_resources        = jsonencode(var.grafana_resources)
    grafana_node_selector    = jsonencode(var.grafana_node_selector)
    grafana_tolerations      = jsonencode(var.grafana_tolerations)
    grafana_affinity         = jsonencode(var.grafana_affinity)
    grafana_security_context = jsonencode(var.grafana_security_context)

    grafana_env                 = jsonencode(var.grafana_env)
    grafana_env_from_secret     = var.grafana_env_from_secret
    grafana_extra_secret_mounts = jsonencode(var.grafana_extra_secret_mounts)
    grafana_extra_volume_mounts = jsonencode(var.grafana_extra_volume_mounts)

    grafana_enable_service_links = var.grafana_enable_service_links

    grafana_service_type        = var.grafana_service_type
    grafana_service_port        = var.grafana_service_port
    grafana_service_target_port = var.grafana_service_target_port
    grafana_service_annotations = jsonencode(var.grafana_service_annotations)
    grafana_service_labels      = jsonencode(var.grafana_service_labels)

    grafana_ingress_enabled     = var.grafana_ingress_enabled
    grafana_ingress_annotations = jsonencode(var.grafana_ingress_annotations)
    grafana_ingress_labels      = jsonencode(var.grafana_ingress_labels)
    grafana_ingress_hosts       = jsonencode(var.grafana_ingress_hosts)
    grafana_ingress_tls         = jsonencode(var.grafana_ingress_tls)

    grafana_extra_init_containers = jsonencode(var.grafana_extra_init_containers)
    grafana_extra_containers      = jsonencode(var.grafana_extra_containers)

    grafana_persistence_enabled            = var.grafana_persistence_enabled
    grafana_persistence_size               = var.grafana_persistence_size
    grafana_persistence_storage_class_name = var.grafana_persistence_storage_class_name
    grafana_persistence_annotations        = jsonencode(var.grafana_persistence_annotations)
    grafana_persistence_existing_claim     = var.grafana_persistence_existing_claim

    grafana_init_chown_data_enabled   = var.grafana_init_chown_data_enabled
    grafana_init_chown_data_resources = jsonencode(var.grafana_init_chown_data_resources)

    grafana_plugins = jsonencode(var.grafana_plugins)

    grafana_datasources            = indent(2, var.grafana_datasources)
    grafana_notifiers              = indent(2, var.grafana_notifiers)
    grafana_dashboard_providers    = indent(2, var.grafana_dashboard_providers)
    grafana_dashboards             = indent(2, var.grafana_dashboards)
    grafana_dashboards_config_maps = indent(2, var.grafana_dashboards_config_maps)

    grafana_main_config = indent(2, var.grafana_main_config)

    grafana_image_repository = var.grafana_image_repository
    grafana_image_tag        = var.grafana_image_tag

    cluster_name            = var.cluster_name
    cluster_oidc_issuer_url = var.cluster_oidc_issuer_url
    cluster_oidc_issuer_arn = var.cluster_oidc_issuer_arn

    grafana_ldap_existing_secret = var.grafana_ldap_existing_secret
    grafana_ldap_config          = jsonencode(var.grafana_ldap_config)

    grafana_smtp_existing_secret = var.grafana_smtp_existing_secret
    grafana_smtp_user_key        = var.grafana_smtp_user_key
    grafana_smtp_password_key    = var.grafana_smtp_password_key

    grafana_admin_password_key = var.grafana_admin_password_key

    image_renderer_enabled             = var.image_renderer_enabled
    image_renderer_replicas            = var.image_renderer_replicas
    image_renderer_image_repository    = var.image_renderer_image_repository
    image_renderer_image_tag           = var.image_renderer_image_tag
    image_renderer_service_account     = var.image_renderer_service_account
    image_renderer_port                = var.image_renderer_port
    image_renderer_target_port         = var.image_renderer_target_port
    image_renderer_priority_class_name = var.image_renderer_priority_class_name
    image_renderer_env                 = jsonencode(var.image_renderer_env)
    image_renderer_annotations         = jsonencode(var.image_renderer_annotations)
    image_renderer_pod_annotations     = jsonencode(var.image_renderer_pod_annotations)
    image_renderer_security_context    = jsonencode(var.image_renderer_security_context)
    image_renderer_resources           = jsonencode(var.image_renderer_resources)
  }
}
