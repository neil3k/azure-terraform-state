output "tf-state-storage-account" {
  value = azurerm_storage_account.tf-state.id
}

output "tf-state-storage-container" {
  value = azurerm_storage_container.tf-state.id
}

output "tf-state-resource-group" {
  value = azurerm_resource_group.tf-state.id
}