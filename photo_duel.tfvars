# =============================================================================
# General Variables
# =============================================================================
rg     = "photo_duel"
region = "eastus"
tags = {
  provisioning_mode = "terraform",
  project           = "photo_duel",
  environment_owner = "Gabriel Saenz"
}

# =============================================================================
# Key Vault
# =============================================================================
keyvault_name = "KVphotoduel"
keyvault_rg   = "photo_duel_keyvault"

# =============================================================================
# SQL
# =============================================================================
sqlserver_name = "photodueldb"
sqldb_name     = "photoduelsql"
admin_username = "sqladmin"

# =============================================================================
# Container Registry
# =============================================================================
container_registry_name = "photoduelcr"

# =============================================================================
# Web app
# =============================================================================
app_service_name = "photo-duel"