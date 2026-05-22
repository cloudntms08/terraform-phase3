terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.74.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1dc07c30-4f02-476a-98b4-89b0d8304e01"
}



# ── Resource Group ─────────────────────────────────────────────────

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
  tags     = local.common_tags
}

# ── Data Lookup Module ─────────────────────────────────────────────

module "data_lookup" {
  source = "./modules/data-mod"

  key_vault_name = "kv-ntms-workshop"
  key_vault_rg   = "your-keyvault-rg"
  secret_name    = "vm-admin-password"
}

# ── Network Module ─────────────────────────────────────────────────

module "network" {
  source = "./modules/network-mod"

  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vnet_name           = local.vnet_name
  subnet_name         = local.snet_name
  tags                = local.common_tags
}

# ── NSG Module ─────────────────────────────────────────────────────

module "nsg" {
  source = "./modules/nsg-mod"

  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  nsg_name            = local.nsg_name
  subnet_id           = module.network.subnet_id
  tags                = local.common_tags
}

# ── Compute Module ─────────────────────────────────────────────────

module "compute" {
  source = "./modules/compute-mod"

  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  subnet_id           = module.network.subnet_id
  admin_password      = module.data_lookup.vm_password
  vm_name             = local.vm_name
  pip_name            = local.pip_name
  nic_name            = local.nic_name
  osdisk_name         = local.osdisk_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  tags                = local.common_tags
}