provider "azurerm" {
  features {}
  version = "3.56.0"
  client_id       = "cc9ab4d6-d511-445a-bc3e-811c3fcc75a9"
  client_secret   = "M.08Q~LBNrUEtq0QH5Rg_596R1BOZxUDSRUtVbxi"
  tenant_id       = "220be160-7a62-4f7d-af52-2e8e0791e064"
  subscription_id = "302b77bd-77d3-418d-a369-59fb4d733d4c"
}

#terraform {
#  backend "local" {
 #   path = "E:/terraform/file.tfstate"
 # }
#}

terraform {
  backend "azurerm" {
    storage_account_name = "ewiruepr"
    container_name       = "testc1"
    key                  = "dev.tfstate"
    access_key = "kn2DZ0K/ZFoDiDfeBFXiEYwlFBHlrtDZnj1Jr9OZpSnalzQsvnDiaz08gral/qdsa5dyweXJhHM0+AStGB6igQ=="
  }
}
