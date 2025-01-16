#infra value
resource_groups = {
  rg01 = {
    name     = "rg0009"
    location = "West US"
  }
}

storage = {
  storage01 = {
    name   = "storczr00010"
    rg_key = "rg01"
  }
}

appserviceplan = {
  "plan1" = {
    name     = "appplan-0010"
    rg_key   = "rg01"
    reserved = "true"
    kind     = "Linux"
    tier     = "Basic"
    size     = "B1"
  }
}

appservice = {
  app1 = {
    name     = "myaService001"
    rg_key   = "rg01"
    plan_key = "plan1"
  },
}


