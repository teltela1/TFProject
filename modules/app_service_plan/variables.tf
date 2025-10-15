variable "app_service_plan_name" {
  type        = string
  description = "App Service Plan name"
}

variable "location" {
  type        = string
  description = "Location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group"
}

#variable "sku_tier" {
#  type        = string
#  description = "SKU tier"
#}

#variable "sku_size" {
#  type        = string
#  description = "SKU size"
#}

variable "sku_name" {
  description = "S1"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}

