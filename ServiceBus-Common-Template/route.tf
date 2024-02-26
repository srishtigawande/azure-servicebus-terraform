# Service Bus Route Table entry
resource "azurerm_route" "tftest" {
  name                = "${azurerm_servicebus_namespace.tftest.name}.servicebus.windows.net"
  resource_group_name = azurerm_servicebus_namespace.tftest.resource_group_name
  route_table_name    = var.route_table_name
  address_prefix      = var.address_prefix
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = var.next_hop_in_ip_address
}

# Service Bus secondary Route Table entry
resource "azurerm_route" "secondary" {
  count = var.create_disaster_recovery ? 1 : 0
  name                = "${azurerm_servicebus_namespace.tftest.name}.servicebus.windows.net"
  resource_group_name = azurerm_servicebus_namespace.tftest.resource_group_name
  route_table_name    = var.route_table_name_secondary
  address_prefix      = var.address_prefix_secondary
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = var.next_hop_in_ip_address_secondary
}