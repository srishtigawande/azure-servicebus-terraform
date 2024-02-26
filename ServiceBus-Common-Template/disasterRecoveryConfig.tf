# Service Bus Auth rule
resource "azurerm_servicebus_namespace_authorization_rule" "tftest" {
  count = var.create_disaster_recovery ? 1 : 0
  name         = "${azurerm_servicebus_namespace.tftest.name}-rule"
  namespace_id = azurerm_servicebus_namespace.tftest.id

  listen = true
  send   = true
  manage = false
}

# Disaster recovery config for servicebus
resource "azurerm_servicebus_namespace_disaster_recovery_config" "tftest" {
  count = var.create_disaster_recovery ? 1 : 0
  name                        = "${azurerm_servicebus_namespace.tftest.name}-disaster-recovery"
  primary_namespace_id        = azurerm_servicebus_namespace.tftest.id
  partner_namespace_id        = azurerm_servicebus_namespace.secondary[count.index].id
  alias_authorization_rule_id = azurerm_servicebus_namespace_authorization_rule.tftest[count.index].id
}

output "resource_group" {
  value = var.resource_group
}