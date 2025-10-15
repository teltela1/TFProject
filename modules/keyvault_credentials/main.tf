#variable "key_vault_name" {
#  description = "Name of the Azure Key Vault"
#  type        = string
#}
#
#variable "resource_group_name" {
#  description = "Resource group containing the Key Vault"
#  type        = string
#}
#
data "azurerm_key_vault" "kv" {
  name                = var.key_vault_name
  resource_group_name = var.resource_group_name
}

data "azurerm_key_vault_secret" "client_id" {
  name         = "Terraform-Client-ID"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "client_secret" {
  name         = "Terraform-Client-Secret"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "tenant_id" {
  name         = "Terraform-Tenant-ID"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "subscription_id" {
  name         = "Terraform-Subscription-ID"
  key_vault_id = data.azurerm_key_vault.kv.id
}

locals {
  missing_secrets = [
    data.azurerm_key_vault_secret.client_id.value,
    data.azurerm_key_vault_secret.client_secret.value,
    data.azurerm_key_vault_secret.tenant_id.value,
    data.azurerm_key_vault_secret.subscription_id.value
  ]
}

resource "null_resource" "validate_secrets" {
  count = length(compact(local.missing_secrets)) == 4 ? 0 : 1

  provisioner "local-exec" {
    command = "echo 'ERROR: One or more required secrets are missing from Azure Key Vault.' && exit 1"
  }
}

output "client_id" {
  value = data.azurerm_key_vault_secret.client_id.value
}

output "client_secret" {
  value     = data.azurerm_key_vault_secret.client_secret.value
  sensitive = true
}

output "tenant_id" {
  value = data.azurerm_key_vault_secret.tenant_id.value
}

output "subscription_id" {
  value = data.azurerm_key_vault_secret.subscription_id.value
}
