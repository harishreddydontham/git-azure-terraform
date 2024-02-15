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
}

provider "azurerm" {
  features {}
}


