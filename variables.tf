/*#backendtf variables
variable "env" {
  description = "Environment name (e.g., dev, qa, prod)"
  type        = string
  default     = "dev"
}

variable "storage_account_name" {
  description = "statefile storagename name (e.g., dev, qa, prod)"
  type        = string
}

variable "resource_group_name" {
  description = "statefile storagename name (e.g., dev, qa, prod)"
  type        = string
}
*/

variable "ARM_CLIENT_ID" {
}

variable "AZURE_CLIENT_SECRET" {
}

variable "AZURE_TENANT_ID" {
}

variable "AZURE_SUBSCRIPTION_ID" {
}

#Infrasturtue variable
variable "resource_groups" {
  type = map(object({
    name : string
    location : string
  }))
}


variable "storage" {
  type = map(object({
    name : string
    rg_key : string
  }))
}

variable "appserviceplan" {
  type = map(object({
    name     = string
    rg_key   = string
    reserved = bool
    kind     = string
    tier     = string
    size     = string

  }))

}

variable "appservice" {
  type = map(object({
    name     = string
    rg_key   = string
    plan_key = string
  }))

}