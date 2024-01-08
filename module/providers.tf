terraform {
  required_providers {

    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.10.0"
    }
  }
  required_version = ">= 0.13"
}

provider "azuredevops" {
  personal_access_token = var.adotoken_VV
  org_service_url       = var.organization_service_url_VV
}