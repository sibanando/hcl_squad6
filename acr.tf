resource "azurerm_resource_group" "rg" {
  name     = "squad-6"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "acrsqaud6"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = false
  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "North Europe"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}
