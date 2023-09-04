
module "aks" {
  source                                =   "Azure/aks/azurerm"
  version                               =   "7.3.1"
  resource_group_name                   =   var.resource_group_name
  kubernetes_version                    =   "1.26.6"
  sku_tier                              =   "Standard"
  identity_type                         =   "SystemAssigned"
  private_cluster_enabled               =   true
  rbac_aad                              =   true
  network_policy                        =   "azure"
  agents_availability_zones             =   ["1", "2","3"]
  log_analytics_workspace_enabled       =   true
  cluster_log_analytics_workspace_name  =   var.cluster_log_analytics_workspace_name
  enable_auto_scaling                   =   true
  enable_host_encryption                =   true
  vnet_subnet_id                        =   var.vnet_subnet_id
}