provider "azurerm" {
    features {}
}


resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.location
  tags = {
    ApplicationName     = "ACETECHWEEK"
    AppTypeRole         = "RG"
    DataProtection      = "NotProtected"
    DRTier              = "None"
    Environment         = "ATS"
    Location            = "USW2Z"
    NotificationContact = "james.fluckiger@cdw.com"
    ProductCostCenter   = "ATS"
    SupportResponseSLA  = "None"
    WorkloadType        = "WebServer"
    Owner               = "James Fluckiger"
  }
}

resource "azurerm_storage_account" "sa" {
  name                      = var.storageaccount_name
  location                  = var.location
  resource_group_name = var.rg_name
  account_tier              = "Standard"
  account_replication_type  = "GRS"
}


resource "azurerm_storage_container" "container" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}