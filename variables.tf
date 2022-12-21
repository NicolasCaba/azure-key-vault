# Azure client


# resource group
variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

# vnet
variable "vnet_name" {
  type        = string
  description = "Nombre de la virutal network"
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

variable "key_vault_secret_name_2" {
  type        = string
  description = "Nombre del secreto del key vault"
}


