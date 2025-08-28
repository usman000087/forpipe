module "rg" {
  source = "../../modules/resource_group"
  resource_group = {
    name     = "dev_rg1"
    location = "westus"
  }
}

module "stg" {
    depends_on = [ module.rg ]
    
  source = "../../modules/storage_account"
  storage_account = {
    name                     = "devstg1"
    resource_group_name      = "dev_rg1"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }

}

