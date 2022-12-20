# client data
data "azurerm_client_config" "client" {}

# resource group
data "azurerm_resource_group" "resource_group" {
  name = "${var.resource_group_name}"
}