variable "resource_group_name" {
  type        = string
  description = "Resource Group name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID from network module output"
}

variable "vm_name" {
  type        = string
  description = "Virtual Machine name"
}

variable "pip_name" {
  type        = string
  description = "Public IP name"
}

variable "nic_name" {
  type        = string
  description = "Network Interface name"
}

variable "osdisk_name" {
  type        = string
  description = "OS Disk name"
}

variable "vm_size" {
  type        = string
  description = "VM SKU size"
  default     = "Standard_B2s"
}

variable "admin_username" {
  type        = string
  description = "VM administrator username"
}

variable "admin_password" {
  type        = string
  description = "VM administrator password from Key Vault"
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
  default     = {}
}