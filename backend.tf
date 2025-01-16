terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestg0001"
    container_name       = "tfstate"
    key                  = "tfstate"
  }
}

#terraform init -backend-config="resource_group_name=RG-01" -backend-config="storage_account_name=terraform00002" -backend-config="client_id=$ARM_CLIENT_ID" -backend-config="client_secret=$ARM_CLIENT_SECRET"  -backend-config="subscription_id=$ARM_SUBSCRIPTION_ID" -backend-config="tenant_id=$ARM_TENANT_ID"
