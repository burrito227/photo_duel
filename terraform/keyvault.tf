resource "random_password" "sql_password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault_name
  resource_group_name = var.keyvault_rg
}

resource "azurerm_key_vault_secret" "sql_admin_password" {
  name         = "sqladmin"
  value        = random_password.sql_password.result
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "django_secret_key" {
  name         = "django-secret-key"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}