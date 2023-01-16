terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.39.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {

  }
}

# git filter-branch -f --index-filter 'git rm --cached -r --ignore-unmatch .terraform/'