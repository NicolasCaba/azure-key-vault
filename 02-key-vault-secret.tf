resource "azurerm_key_vault_secret" "secret_vnet_id" {
  name         = "${var.key_vault_secret_name}"
  value        = "${data.azurerm_virtual_network.vnet.id}"
  key_vault_id = azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault_secret" "secret_vnet_name" {
  name         = "${var.key_vault_secret_name_2}"
  value        = "${data.azurerm_virtual_network.vnet.name}"
  key_vault_id = azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault_secret" "secret_subnets_public_id" {
  for_each = data.azurerm_subnet.subnets_public

  name         = "${each.value.name}-id"
  value        = "${each.value.id}"
  key_vault_id = azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault_secret" "secret_subnets_public_name" {
  for_each = data.azurerm_subnet.subnets_public

  name         = "${each.value.name}-name"
  value        = "${each.value.name}"
  key_vault_id = azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault_secret" "secret_subnets_private_id" {
  for_each = data.azurerm_subnet.subnets_private

  name         = "${each.value.name}-id"
  value        = "${each.value.id}"
  key_vault_id = azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault_secret" "secret_subnets_private_name" {
  for_each = data.azurerm_subnet.subnets_private

  name         = "${each.value.name}-name"
  value        = "${each.value.name}"
  key_vault_id = azurerm_key_vault.key_vault.id
}