# Private endpoint for the Service Bus
resource "azurerm_private_endpoint" "tftest" {
  name                = azurerm_servicebus_namespace.tftest.name
  location            = var.location
  resource_group_name = azurerm_servicebus_namespace.tftest.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.servicebus_namespace}-PE"
    private_connection_resource_id = azurerm_servicebus_namespace.tftest.id
    subresource_names              = [ "namespace" ]
    is_manual_connection           = false
  }
}


# Private endpoint for the secondary Service Bus
resource "azurerm_private_endpoint" "secondary" {
  count = var.create_disaster_recovery ? 1 : 0
  name                = azurerm_servicebus_namespace.secondary[count.index].name
  location            = var.location
  resource_group_name = azurerm_servicebus_namespace.secondary[count.index].resource_group_name
  subnet_id           = var.subnet_id_secondary

  private_service_connection {
    name                           = "${azurerm_servicebus_namespace.secondary[count.index].name}-PE"
    private_connection_resource_id = azurerm_servicebus_namespace.secondary[count.index].id
    subresource_names              = [ "namespace" ]
    is_manual_connection           = false
  }
}