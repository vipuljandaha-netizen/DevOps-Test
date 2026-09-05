rgs = {
  rg1 = {
    name     = "ProDot-dev"
    location = "centralindia"
  }

  rg2 = {
    name     = "ProDot-devtest"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    name                = "Spoke-vnet"
    location            = "centralindia"
    resource_group_name = "ProDot-dev"
    address_space       = ["10.32.0.0/16"]

  }
  vnet2 = {
    name                = "Hub-vnet"
    location            = "centralindia"
    resource_group_name = "ProDot-dev"
    address_space       = ["10.33.0.0/16"]

  }
}


snet = {
  snet1 = {
    name                 = "frontend-snet"
    virtual_network_name = "Spoke-vnet"
    resource_group_name  = "ProDot-dev"
    address_prefixes     = ["10.32.1.0/24"]

  }
  snet2 = {
    name                 = "backend-snet"
    virtual_network_name = "Spoke-vnet"
    resource_group_name  = "ProDot-dev"
    address_prefixes     = ["10.32.2.0/24"]

  }
  snet3 = {
    name                 = "database-snet"
    virtual_network_name = "Spoke-vnet"
    resource_group_name  = "ProDot-dev"
    address_prefixes     = ["10.32.3.0/24"]

  }

  # snet4 = {
  #   name                 = "AzureBastionSubnet"
  #   virtual_network_name = "Hub-vnet"
  #   resource_group_name  = "ProDot-dev"
  #   address_prefixes     = ["10.33.1.0/24"]

  #}
}