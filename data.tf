# client data
data "azurerm_client_config" "client" {}

# resource group
data "azurerm_resource_group" "resource_group" {
  name = "${var.resource_group_name}"
}

# vnet
data "azurerm_virtual_network" "vnet" {
  resource_group_name = data.azurerm_resource_group.resource_group.name
  name = "${var.vnet_name}"
}

# public subnets
locals {
  subnets_public_names = {
    subnet_public_1 = {
      name = "subnet-public-1"
    },
    subnet_public_2 = {
      name = "subnet-public-2"
    },
    subnet_public_3 = {
      name = "subnet-public-3"
    }
  }
}

data "azurerm_subnet" "subnets_public" {
  for_each = local.subnets_public_names
  resource_group_name = data.azurerm_resource_group.resource_group.name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  name = each.value.name
}

# private subnets
locals {
  subnets_private_names = {
    subnet_private_1 = {
      name = "subnet-private-1"
    },
    subnet_private_2 = {
      name = "subnet-private-2"
    },
    subnet_private_3 = {
      name = "subnet-private-3"
    }
  }
}

data "azurerm_subnet" "subnets_private" {
  for_each = local.subnets_private_names
  resource_group_name = data.azurerm_resource_group.resource_group.name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  name = each.value.name
}