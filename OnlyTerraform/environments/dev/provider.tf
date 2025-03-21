terraform {
  required_version = ">= 1.5.0"
  
  # backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "< 3.90.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}