terraform {
  backend "azurerm" {
    subscription_id      = "52e32df1-0fd6-46b5-85b2-61adbcb4af91" #subscription id from storage account that contains tfstate
    resource_group_name  = "tfstate-github"
    storage_account_name = "storagetfstatejulius01"
    container_name       = "tfstate"
    key                  = "jultest/storage.tfstate" #name of blob within container to write state file
    use_oidc             = true
    use_azuread_auth     = true
  }
}
