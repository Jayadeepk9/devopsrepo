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
    storage_account_name = "buildrg"
    container_name       = "container1"
    key                  = "dev.tfstate"
    access_key = "JiDSBxUxsTCxjsbl/6WolNPUiBg5kmdHV+aVxtJ6+1tcbOHS8iSCiq9HxrEdndtYM8WCKe/Ydi6j+ASt51HFVw=="
  }
}
