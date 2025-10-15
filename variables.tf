variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region for all resources"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default     = {}
}

variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the Virtual Network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the Subnet"
}

variable "subnet_address_prefix" {
  type        = list(string)
  description = "Address prefix for the Subnet"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Storage Account"
}

variable "account_tier" {
  type        = string
  description = "Storage Account tier"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Replication type for Storage Account"
  default     = "LRS"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

#variable "sku_tier" {
#  type        = string
#  description = "SKU tier for App Service Plan"
#  default     = "Basic"
#}

#variable "sku_size" {
#  type        = string
#  description = "SKU size for App Service Plan"
#  default     = "B1"
#}

variable "sku_name" {
  description = "SKU name for the App Service Plan (e.g., B1, S1, P1v2)"
  type        = string
}

variable "web_app_name" {
  type        = string
  description = "Name of the Web App"
}

#variable "subscription_id" {
#  description = "Azure Subscription ID"
#  type        = string
#}

#variable "client_id" {
#  description = "Azure Service Principal Client ID"
#  type        = string
#}

#variable "client_secret" {
#  description = "Azure Service Principal Client Secret"
#  type        = string
#  sensitive   = true
#}

#variable "tenant_id" {
#  description = "Azure Tenant ID"
#  type        = string
#}
