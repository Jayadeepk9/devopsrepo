provider "azurerm" {
  features {}
  version = "3.56.0"
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
