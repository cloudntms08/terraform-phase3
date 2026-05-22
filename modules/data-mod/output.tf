output "vm_password" {
  description = "VM admin password retrieved from Key Vault"
  value       = data.azurerm_key_vault_secret.this.value
  sensitive   = true
}