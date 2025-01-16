#infra value
resource_groups = {
  rg01 = {
    name     = "rgdev0009"
    location = "West Europe"
  }
}

storage = {
  storage01 = {
    name   = "storczrsdev00010"
    rg_key = "rg01"
  }
}

/*appserviceplan = {
  "plan1" = {
    name     = "appplandev-0010"
    rg_key   = "rg01"
    reserved = "true"
    kind     = "Linux"
    tier     = "Basic"
    size     = "B1"
  }
}*/

appservice = {
  app1 = {
    name   = "mystatiserdev009"
    rg_key = "rg01"
    #plan_key = "plan1"
  },
}


