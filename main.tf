
module "aks" {
  source                                =   "Azure/aks/azurerm"
  version                               =   "7.3.1"
  resource_group_name                   =   var.resource_group_name
  kubernetes_version                    =   "1.26.6"
  sku_tier                              =   "Standard"
  identity_type                         =   "SystemAssigned"
  private_cluster_enabled               =   true
  rbac_aad                              =   true
  role_based_access_control_enabled     =   true
  network_policy                        =   "azure"
  agents_availability_zones             =   ["1", "2","3"]
  log_analytics_workspace_enabled       =   true
  cluster_log_analytics_workspace_name  =   var.cluster_log_analytics_workspace_name
  enable_auto_scaling                   =   true
  enable_host_encryption                =   true
  vnet_subnet_id                        =   var.vnet_subnet_id
  cluster_name                          =   var.cluster_name
  prefix                                =   "test"
  agents_max_count                      =   3
  agents_min_count                      =   1
  rbac_aad_managed                      =   true
  network_plugin                        =   "azure"
  net_profile_service_cidr              =   "100.64.0.0/16"
}
