variable "resource_group_name" {
  type    = string
  default = "tfstate-rg"
}

variable "storage_account_name" {
  type    = string
  default = "tfstatestg0001"
}

variable "env" {
  type    = string
  default = "dev"  # Default environment (dev, qa, or prod)
}

terraform {
  backend "azurerm" {
    resource_group_name  = var.resource_group_name
    storage_account_name = var.storage_account_name
    container_name       = "tfstate" # Must be the name of the blob container
    key                  = "${var.env}.tfstate"
  }
}


#terraform init -backend-config="resource_group_name=RG-01" -backend-config="storage_account_name=terraform00002" -backend-config="client_id=$ARM_CLIENT_ID" -backend-config="client_secret=$ARM_CLIENT_SECRET"  -backend-config="subscription_id=$ARM_SUBSCRIPTION_ID" -backend-config="tenant_id=$ARM_TENANT_ID"
