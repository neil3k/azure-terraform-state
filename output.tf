output "tf-state-storage-account" {
  value = azurerm_storage_account.tf-state.name
}

output "tf-state-storage-container" {
  value = azurerm_storage_container.tf-state.name
}

output "tf-state-resource-group" {
  value = azurerm_resource_group.tf-state.name
}