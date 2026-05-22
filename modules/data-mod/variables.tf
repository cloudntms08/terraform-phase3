variable "key_vault_name" {
  type        = string
  description = "Name of the existing Key Vault"
}

variable "key_vault_rg" {
  type        = string
  description = "Resource Group where Key Vault lives"
  default = "kv-ntms-workshop"
}

variable "secret_name" {
  type        = string
  description = "Name of the secret storing VM password"
  default     = "vm-admin-password"
}