output "key_vault_id" {
  description = "Id del key vault"
  value = azurerm_key_vault.key_vault.id
}

output "key_vault_name" {
  description = "Nombre del key vault"
  value = azurerm_key_vault.key_vault.name
}