output "vnet_id" {
  value = module.network.vnet_id
}

output "vm_public_ip" {
  value = module.compute.public_ip_address
}

output "storage_account" {
  value = module.storage.storage_account_name
}