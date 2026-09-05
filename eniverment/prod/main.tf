module "resource_group" {
  source = "../../module/azurerm_resource_group"
  rgx    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_virtual_network"
  vnet       = var.vnet
}


module "subnet" {
  depends_on = [module.resource_group, module.virtual_network]
  source     = "../../module/azurerm_subnet"
  snet       = var.snet
}