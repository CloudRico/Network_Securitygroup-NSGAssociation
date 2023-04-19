output "name" {
  value = azurerm_network_security_group.nsg1.name
}
output "id" {
  value = azurerm_network_security_group.nsg1.id
}
output "location" {
  value = azurerm_network_security_group.nsg1.location
}
output "enviroment" {
  value = var.enviroment
}
output "workload" {
  value = var.workload
}
output "application" {
  value = var.application
}
