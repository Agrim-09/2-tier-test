terraform {
  backend "azurerm" {
    resource_group_name   = "testrg01"  # Resource Group for the backend
    storage_account_name  = "testsaciainsight01"     # Storage Account for the backend
    container_name        = "tfstatefile"               # Container for the backend
    key                   = "terraform.tfstate"     # State file name
  }
}

# provider "azurerm" {
#   features {}
#   subscription_id = "41c298fc-f608-494b-8bfe-2e6684d44561"
# }


module "vm" {
  source = "../../../templates/modules/compute/vm"
}