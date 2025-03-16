output "public_ip_address" {
  description = "VM public IP address"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "vm_id" {
  description = "Virtual Machine ID"
  value       = azurerm_linux_virtual_machine.linux_vm.id
}