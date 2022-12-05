resource "azurerm_resource_group" "rgroup" {
  name     = var.resource_group
  location = var.location
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_cosmosdb_account" "db" {
  name                = format("%s%d", var.nome_db, random_integer.ri.result)
  location            = var.location
  resource_group_name = azurerm_resource_group.rgroup.name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  enable_automatic_failover = true

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = "westus"
    failover_priority = 0
  }
}