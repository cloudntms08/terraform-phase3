variable "location" {
  type        = string
  description = "Azure region for all resources"
  default     = "East US"
}

variable "environment" {
  type        = string
  description = "Environment name used in naming and tagging"
  default     = "dev"
}

variable "vm_size" {
  type        = string
  description = "Azure VM SKU size"
  default     = "Standard_B2s"
}

variable "admin_username" {
  type        = string
  description = "VM local administrator username"
  default     = "azureadmin"
}