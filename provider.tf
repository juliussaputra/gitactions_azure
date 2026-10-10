terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>5.8.0"
    }
  }

  required_version = ">=1.16.5"
}

provider "azurerm" {
  features {
    use_oidc = true
  }
}
