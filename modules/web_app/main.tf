#resource "azurerm_app_service" "webapp" {
#  name                = var.web_app_name
#  location            = var.location
#  resource_group_name = var.resource_group_name
#  app_service_plan_id = var.app_service_plan_id
#
#  site_config {
#    always_on = true
#  }
#
#  app_settings = {
#    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
#  }
#}
#
#resource "local_file" "html" {
#  content  = "<html><body><h1>Hello from Terraform Azure Web App</h1></body></html>"
#  filename = "${path.module}/wwwroot/index.html"
#}
resource "azurerm_linux_web_app" "webapp" {
  name                = var.web_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.app_service_plan_id

  site_config {
    always_on = true
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }
}

