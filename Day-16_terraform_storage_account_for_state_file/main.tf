terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "diske-resourcesn"
  location = "West Europe"
}

terraform {
  backend "azurerm" {
    storage_account_name = "nikhilstroageacount1"
    container_name       = "container1"
    key                  = "terraform.tfstate"

    access_key = "Wodkb+Tp9LDLqhfq3srt7LVQvE6HgRz7pj3p7lPJBswGdzHJR56+RgFlc7lv4bH5N/4fDjNEFSN2+AStGR2pvw=="
  }
}