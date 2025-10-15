resource_group_name = "myResourceGroup"
location            = "Italy North"
tags = {
  environment = "dev"
  project     = "terraform-modules"
}
vnet_name                = "myVnet"
vnet_address_space       = ["10.0.0.0/16"]
subnet_name              = "mySubnet"
subnet_address_prefix    = ["10.0.1.0/24"]
storage_account_name     = "mystorageacct"
account_tier             = "Standard"
account_replication_type = "LRS"
app_service_plan_name    = "myAppServicePlan"
#sku_tier                 = "Basic"
#sku_size                 = "B1"
sku_name     = "B1"
web_app_name = "myWebApp"

