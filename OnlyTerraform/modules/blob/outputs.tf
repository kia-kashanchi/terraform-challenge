output "storage_account_name" {
  description = "Storage account name"
  value       = azurerm_storage_account.blob_storage.name
}

output "primary_access_key" {
  description = "Primary storage access key"
  value       = azurerm_storage_account.blob_storage.primary_access_key
  sensitive   = true
}