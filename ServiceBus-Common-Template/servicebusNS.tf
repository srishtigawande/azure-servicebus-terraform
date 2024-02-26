# Service Bus Namespace
resource "azurerm_servicebus_namespace" "tftest" {
  name                = var.servicebus_namespace
  location            = var.location
  resource_group_name = var.resource_group
  sku                 = "Premium"
  capacity = 1
  public_network_access_enabled = false
  
#   network_rule_set {
#     default_action = var.network_default_action
#     ip_rules = var.ip_rules
#     network_rules {
#       subnet_id = var.create_network_rule ? var.network_rules_subnet_id : null
#       ignore_missing_vnet_service_endpoint = var.ignore_missing_vnet_service_endpoint
#     }
#   }

  tags = {
    source = "terraform"
  }
}

# Service Bus secondary namespace for backup
resource "azurerm_servicebus_namespace" "secondary" {
  count = var.create_disaster_recovery ? 1 : 0
  name                = "${azurerm_servicebus_namespace.tftest.name}-secondary"
  location            = azurerm_servicebus_namespace.tftest.location
  resource_group_name = var.resource_group
  sku                 = "Premium"
  capacity = 1
  public_network_access_enabled = false
  tags = {
    source = "terraform"
  }
}