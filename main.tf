resource "azurerm_resource_group" "testlab" {
  name     = "rg-lab-gwc-001"
  location = "germanywestcentral"
}

resource "azurerm_storage_account" "example" {
  name                            = "juliustestlab002131"
  resource_group_name             = azurerm_resource_group.testlab.name
  location                        = azurerm_resource_group.testlab.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
}

output "storage_account_name" {
  value = azurerm_storage_account.example.name
}
