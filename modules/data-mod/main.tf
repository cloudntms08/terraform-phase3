data "azurerm_key_vault" "this" {
  name                = var.key_vault_name
  resource_group_name = var.key_vault_rg
}

data "azurerm_key_vault_secret" "this" {
  name         = var.secret_name
  key_vault_id = data.azurerm_key_vault.this.id
}