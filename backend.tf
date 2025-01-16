variable "env" {
  type    = string
  default = "dev"
}


terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestg0001"
    container_name       = "tfstate"
    key                  = "${var.env}.tfstate"
    tenant_id            = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
    subscription_id      = "2e8978a4-2ee8-445a-8287-ec90e39c778d"
  }
}

#terraform init -backend-config="resource_group_name=RG-01" -backend-config="storage_account_name=terraform00002" -backend-config="client_id=$ARM_CLIENT_ID" -backend-config="client_secret=$ARM_CLIENT_SECRET"  -backend-config="subscription_id=$ARM_SUBSCRIPTION_ID" -backend-config="tenant_id=$ARM_TENANT_ID"
