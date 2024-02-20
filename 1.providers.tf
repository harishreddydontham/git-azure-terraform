terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "<=3.91.0"

    }

    aws = {
      source  = "hashicorp/aws"
      version = "<=5.40.0"
    }

    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "=1.15.1"
    }

    elasticstack = {
      source  = "elastic/elasticstack"
      version = "<=5.40.0"
    }

  }
  required_version = ">= 0.13"

  backend "azurerm" {
    resource_group_name  = "testrg1"
    storage_account_name = "devsecopbsb39tfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}


