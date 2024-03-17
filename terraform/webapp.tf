resource "azurerm_service_plan" "photo_duel_app_plan" {
  name                = "${var.app_service_name}_plan"
  location            = var.region
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "B1"
  os_type             = "Linux"
}


resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = var.region
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_service_plan.photo_duel_app_plan.id

  site_config {
    linux_fx_version = "DOCKER|${azurerm_container_registry.containerregistry.login_server}/photoduel:latest"
  }

  app_settings = {
    "DOCKER_REGISTRY_SERVER_URL" = "https://${azurerm_container_registry.containerregistry.login_server}"
    "DOCKER_REGISTRY_SERVER_USERNAME" = azurerm_container_registry.containerregistry.admin_username
    "DOCKER_REGISTRY_SERVER_PASSWORD" = azurerm_container_registry.containerregistry.admin_password
  }
}