#infra value
resource_groups = {
  rg01 = {
    name     = "rgstg0009"
    location = "West Europe"
  }
}

storage = {
  storage01 = {
    name   = "storczrsstg00010"
    rg_key = "rg01"
  }
}

/*appserviceplan = {
  "plan1" = {
    name     = "appplanstg-0010"
    rg_key   = "rg01"
    reserved = "true"
    kind     = "Linux"
    tier     = "Basic"
    size     = "B1"
  }
}*/

appservice = {
  app1 = {
    name   = "myaServicestg001"
    rg_key = "rg01"
    #plan_key = "plan1"
  },
}


