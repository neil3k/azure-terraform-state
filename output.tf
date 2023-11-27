output "tf-state-storage-account" {
  value = azurerm_storage_account.this.name
}

output "tf-state-storage-container" {
  value = azurerm_storage_container.this.name
}

output "tf-state-resource-group" {
  value = azurerm_resource_group.this.name
}