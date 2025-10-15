#provider "azurerm" {
#  features {}
#
#  subscription_id = var.subscription_id
#  client_id       = var.client_id
#  client_secret   = var.client_secret
#  tenant_id       = var.tenant_id
#
#}

provider "azurerm" {
  features {}

#  subscription_id = module.azure_creds.subscription_id
#  client_id       = module.azure_creds.client_id
#  client_secret   = module.azure_creds.client_secret
#  tenant_id       = module.azure_creds.tenant_id
}

module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source                = "./modules/network"
  vnet_name             = var.vnet_name
  address_space         = var.vnet_address_space
  location              = module.resource_group.location
  resource_group_name   = module.resource_group.rg_name
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  tags                  = var.tags
}

module "storage_account" {
  source                   = "./modules/storage_account"
  storage_account_name     = var.storage_account_name
  resource_group_name      = module.resource_group.rg_name
  location                 = module.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}

module "app_service_plan" {
  source                = "./modules/app_service_plan"
  app_service_plan_name = var.app_service_plan_name
  location              = module.resource_group.location
  resource_group_name   = module.resource_group.rg_name
  sku_name              = var.sku_name
  #  sku_tier              = var.sku_tier
  #  sku_size              = var.sku_size
  tags = var.tags
}

module "web_app" {
  source              = "./modules/web_app"
  web_app_name        = var.web_app_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.rg_name
  app_service_plan_id = module.app_service_plan.plan_id
  #  subnet_id           = module.network.subnet_id
}

module "azure_creds" {
  source              = "./modules/keyvault_credentials"
  key_vault_name      = "myKeyVault3356774"
  resource_group_name = "myResourceGroup"
}

