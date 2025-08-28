terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }

  backend "azurerm" {
    access_key           = "okp40bZ7fI/bTRWUy4dop755tlElE2sdj2lnl4kGWDpISzTVt6uBAQtLQJUB/2wE5xvylbvsT14p+AStDN6KGw=="
    storage_account_name = "backendstate08"
    container_name       = "terraformstate"
    key                  = "prod.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "088412f5-0303-4050-9e53-2b794c57b126"
}
