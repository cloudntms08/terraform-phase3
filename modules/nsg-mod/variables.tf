variable "resource_group_name" {
  type        = string
  description = "Resource Group name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "nsg_name" {
  type        = string
  description = "NSG name"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID from network module output"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
  default     = {}
}