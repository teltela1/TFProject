variable "vnet_name" {
  type        = string
  description = "Virtual Network name"
}

variable "address_space" {
  type        = list(string)
  description = "VNet address space"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "subnet_address_prefix" {
  type        = list(string)
  description = "Subnet address prefix"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}

