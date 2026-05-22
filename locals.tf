locals {
  prefix = "ntms-${var.environment}"

  # Resource names
  rg_name     = "rg-${local.prefix}"
  vnet_name   = "vnet-${local.prefix}"
  snet_name   = "snet-${local.prefix}"
  nsg_name    = "nsg-${local.prefix}"
  pip_name    = "pip-${local.prefix}-vm"
  nic_name    = "nic-${local.prefix}-vm"
  vm_name     = "vm-${local.prefix}-01"
  osdisk_name = "osdisk-${local.prefix}-vm"

  # Common tags
  common_tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = "NTMS-Workshop"
    Owner       = "Training Team"
  }
}