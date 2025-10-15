resource "azurerm_service_plan" "plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
#  kind                = "App"
#  reserved            = false
  os_type             = "Linux"
  sku_name            = var.sku_name

#  sku {
#    tier = var.sku_tier
#    size = var.sku_size
#  }

  tags = var.tags
}

