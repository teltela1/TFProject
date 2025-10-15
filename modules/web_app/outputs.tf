output "web_app_id" {
  value = azurerm_linux_web_app.webapp.id
}

output "web_app_default_hostname" {
  value = azurerm_linux_web_app.webapp.default_hostname
}
