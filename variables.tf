# resource group
variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

# key vault
variable "key_vault_name" {
  type        = string
  description = "Nombre del key vault"
}

# key vault secret
variable "key_vault_secret_name" {
  type        = string
  description = "Nombre del secreto del key vault"
}


