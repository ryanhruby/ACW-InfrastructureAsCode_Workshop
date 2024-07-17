terraform {
  required_version = ">=1.6.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"     
    }   
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-github-actions"
    storage_account_name = "tfghactions20240717rmh"
    container_name       = "tfstatepart2"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {    
  }
  use_oidc = true
  skip_provider_registration = true
}