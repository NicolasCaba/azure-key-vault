resource "azurerm_key_vault_secret" "key_vault_secret" {
  name         = "${var.key_vault_secret_name}"
  value        = "valor-de-mi-secreto"
  key_vault_id = azurerm_key_vault.key_vault.id
}