output "cr_admin_username" {
  value = azurerm_container_registry.containerregistry.admin_username
}

output "cr_admin_password" {
  value     = azurerm_container_registry.containerregistry.admin_password
  sensitive = true
}