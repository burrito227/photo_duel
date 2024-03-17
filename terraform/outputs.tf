output "cr_admin_username" {
  value = azurerm_container_registry.containerregistry.admin_username
}

output "cr_admin_password" {
  value     = azurerm_container_registry.containerregistry.admin_password
  sensitive = true
}

output "db_admin_password" {
  value     = azurerm_key_vault_secret.sql_admin_password.value
  sensitive = true
}

output "django_secret_key" {
  value     = data.azurerm_key_vault_secret.django_secret_key
  sensitive = true
}