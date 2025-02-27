provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "terraform-state-rg"
  location = "West Europe"
}

module "azure_infrastructure" {
  source = "./configuration"
}