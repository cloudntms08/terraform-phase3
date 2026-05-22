variable "resource_group_name" {
  type        = string
  description = "Resource Group name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network name"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
  default     = {}
}