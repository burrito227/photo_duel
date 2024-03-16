# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name  = "photo_duel_sa"
    storage_account_name = "photoduelsa"
    container_name       = "terraform"
    key                  = "photoduel.tfstate"
  }
}

provider "azurerm" {
  features {}
}