resource "azurerm_resource_group" "env_rg" {
  name     = "${var.environment}-rg"
  location = var.location
  tags     = var.tags
}

module "network" {
  source              = "../../modules/vnet"
  environment         = var.environment
  resource_group_name = azurerm_resource_group.env_rg.name
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  location            = var.location
  tags                = var.tags
}

module "compute" {
  source              = "../../modules/vm"
  environment         = var.environment
  resource_group_name = azurerm_resource_group.env_rg.name
  location            = var.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key_path = var.ssh_public_key_path
  subnet_id           = module.network.subnet_ids["web"]
  tags                = var.tags
}

module "storage" {
  source              = "../../modules/blob"
  environment         = var.environment
  resource_group_name = azurerm_resource_group.env_rg.name
  location            = var.location
  tags                = var.tags
}