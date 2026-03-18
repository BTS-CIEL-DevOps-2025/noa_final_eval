resource "azurerm_resource_group" "rg" {
  name     = "noa_final_eval_rg"
  location = "France Central"
}


resource "azurerm_storage_account" "static_site" {
  name                     = "noafinalevalsa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    evenement = "eval"
  }
}


