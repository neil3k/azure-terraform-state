resource "azurerm_resource_group" "this" {
  name     = "terraform-state"
  location = "West Europe"
}

resource "random_string" "this" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_storage_account" "this" {
  name                            = "terraformstate${random_string.this.result}"
  resource_group_name             = azurerm_resource_group.this.name
  location                        = azurerm_resource_group.this.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = false

  tags = merge(
    var.common_tags,
    {
      Name = "${var.name}-storage-account"
    }
  )
}

resource "azurerm_storage_container" "this" {
  name                  = "tf-state"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}