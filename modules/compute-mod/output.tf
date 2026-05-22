output "vm_name" {
  description = "Virtual Machine name"
  value       = azurerm_windows_virtual_machine.this.name
}

output "public_ip" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.this.ip_address
}

output "private_ip" {
  description = "Private IP address of the VM"
  value       = azurerm_network_interface.this.private_ip_address
}

output "rdp_command" {
  description = "RDP command to connect to the VM"
  value       = "mstsc /v:${azurerm_public_ip.this.ip_address}"
}