variable "storage_account_name" {
  type        = string
  description = "Storage account name"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group"
}

variable "location" {
  type        = string
  description = "Location"
}

variable "account_tier" {
  type        = string
  description = "Account tier"
}

variable "account_replication_type" {
  type        = string
  description = "Replication type"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}

