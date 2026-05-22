output "vnet_name" {
  description = "Virtual Network name"
  value       = azurerm_virtual_network.this.name
}

output "vnet_id" {
  description = "Virtual Network resource ID"
  value       = azurerm_virtual_network.this.id
}

output "subnet_id" {
  description = "Subnet resource ID — used by NSG and Compute modules"
  value       = azurerm_subnet.this.id
}