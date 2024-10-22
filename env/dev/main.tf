module "dev_vm" {
  source                     = "../../modules/vm"
  resource_group             = "IN-RG-gallarditas-Dev"
  security_group_name        = "IN-SG-gallarditas-Dev"
  virtual_network_name       = "IN-VNET-gallarditas-Dev"
  subnet_name                = "IN-SUBNET-gallarditas-Dev"
  ip_name                    = "IN-IP-gallarditas-Dev"
  location                   = "eastus2"
  admin_username             = "adminuser"
  nic_name                   = "IN-NIC-gallarditas-Dev"
  vm_name                    = "IN-Server-gallarditas-Dev"
  DOMAIN                     = var.DOMAIN
  MAIL_SECRET_KEY            = var.MAIL_SECRET_KEY
  MAIL_SERVICE               = var.MAIL_SERVICE
  MAPBOX_ACCESS_TOKEN        = var.MAPBOX_ACCESS_TOKEN
  MONGO_INITDB_ROOT_USERNAME = var.MONGO_INITDB_ROOT_USERNAME
  MONGO_INITDB_ROOT_PASSWORD = var.MONGO_INITDB_ROOT_PASSWORD
  MONGO_DB                   = var.MONGO_DB
  MAIL_USER                  = var.MAIL_USER
  PORT                       = var.PORT
  MONGO_URL                  = var.MONGO_URL

}

resource "azurerm_resource_group" "romero" {
  name     = "romero"
  location =  "eastus2"
}

output "print" {
  value = dev_vm.MonkeypoxIP
}