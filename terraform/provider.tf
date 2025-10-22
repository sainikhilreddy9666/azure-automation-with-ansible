terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}

  # Optional: if you already set environment variables
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id
  # subscription_id = var.subscription_id
  resource_provider_registrations = "none"
}


