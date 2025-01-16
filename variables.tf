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

/*variable "appserviceplan" {
  type = map(object({
    name     = string
    rg_key   = string
    reserved = bool
    kind     = string
    tier     = string
    size     = string

  }))

}*/

variable "appservice" {
  type = map(object({
    name     = string
    rg_key   = string
    #plan_key = string
  }))

}