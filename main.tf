terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.74"
    }
}

  required_version = "1.0.6"


}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location

}
resource "azurerm_virtual_network" "vnet" {
  name                = "mychuckingvirtualnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.rgname
}
