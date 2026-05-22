output "resource_group_name" {
  description = "Deployed Resource Group name"
  value       = azurerm_resource_group.rg.name
}

output "vnet_name" {
  description = "Virtual Network name"
  value       = module.network.vnet_name
}

output "vm_name" {
  description = "Virtual Machine name"
  value       = module.compute.vm_name
}

output "vm_public_ip" {
  description = "Public IP address for RDP"
  value       = module.compute.public_ip
}

output "vm_private_ip" {
  description = "Private IP address of the VM"
  value       = module.compute.private_ip
}

output "rdp_command" {
  description = "Run this command to open RDP session"
  value       = module.compute.rdp_command
}