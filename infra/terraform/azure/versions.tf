terraform {
  required_version = ">= 1.9.0"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" }
    random  = { source = "hashicorp/random",  version = "~> 3.6" }
  }
  backend "azurerm" {
    resource_group_name  = "matchday-tfstate"
    storage_account_name = "matchdaytfstate"
    container_name       = "tfstate"
    key                  = "matchday/azure/terraform.tfstate"
  }
}

provider "azurerm" { features {} }
