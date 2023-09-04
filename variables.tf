variable "resource_group_name" {
  type        = string
  default     = "LennarSREPoc"
}

variable "cluster_log_analytics_workspace_name" {
  type        = string
  default     = "rk-log-test"
}

variable "vnet_subnet_id" {
  type        = string
  default     = "/subscriptions/81f39976-e79a-495d-9fe2-9605dee64f16/resourceGroups/LennarSREPoc/providers/Microsoft.Network/virtualNetworks/rk-aks-vnet/rk-aks-sn"
}

variable "cluster_name" {
  type        = string
  default     = "rk-aks-test-2"
}
