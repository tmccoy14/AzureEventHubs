terraform {
  required_version = ">= 0.12.19"
  backend "azurerm" {}
}

# ---------------------------------------------------------------------------------------------------------------------
# PREPARE PROVIDERS
# ---------------------------------------------------------------------------------------------------------------------
provider "azurerm" {
  version     = ">= 2.20.0"
  environment = var.azure_environment
  features {}
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN EVENTHUB NAMESPACE
# ---------------------------------------------------------------------------------------------------------------------
resource "azurerm_eventhub_namespace" "eventhub_namespace" {
  name                = var.eventhub_namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  capacity            = var.capacity
  tags                = var.tags
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN EVENTHUB
# ---------------------------------------------------------------------------------------------------------------------
resource "azurerm_eventhub" "eventhub" {
  name                = var.eventhub_name
  namespace_name      = azurerm_eventhub_namespace.eventhub_namespace.name
  resource_group_name = var.resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE A STORAGE CONTAINER
# ---------------------------------------------------------------------------------------------------------------------
resource "azurerm_storage_container" "storage_container" {
  name                  = var.storage_container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.container_access_type
}
