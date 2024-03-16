resource "azurerm_mssql_server" "sql" {
  name                         = var.sqlserver_name
  location                     = var.region
  resource_group_name          = azurerm_resource_group.rg.name
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = azurerm_key_vault_secret.sql_admin_password.value
}

resource "azurerm_mssql_database" "db" {
  name                        = var.sqldb_name
  server_id                   = azurerm_mssql_server.sql.id
  collation                   = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb                 = 20
  read_scale                  = false
  sku_name                    = "GP_S_Gen5_2"
  min_capacity                = 2
  auto_pause_delay_in_minutes = 60

  lifecycle {
    prevent_destroy = true
  }

}
