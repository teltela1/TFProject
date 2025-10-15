#output "plan_id" {
#  value = azurerm_app_service_plan.plan.id
#}
#
#output "plan_name" {
#  value = azurerm_app_service_plan.plan.name
#}
output "plan_id" {
  value = azurerm_service_plan.plan.id
}

output "plan_name" {
  value = azurerm_service_plan.plan.name
}
