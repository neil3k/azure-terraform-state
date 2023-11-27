resource "azurerm_resource_group" "tf-state" {
  name     = "terraform-state"
  location = "West Europe"
}

resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_storage_account" "tf-state" {
  name                            = "terraformstate${random_string.resource_code.result}"
  resource_group_name             = azurerm_resource_group.tf-state.name
  location                        = azurerm_resource_group.tf-state.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = false
}

resource "azurerm_storage_container" "tf-state" {
  name                  = "tf-state"
  storage_account_name  = azurerm_storage_account.tf-state.name
  container_access_type = "private"
}