output "vnet_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.main_vnet.id
}

output "subnet_ids" {
  description = "Map of subnet names to IDs"
  value       = { for k, v in azurerm_subnet.network_subnets : k => v.id }
}