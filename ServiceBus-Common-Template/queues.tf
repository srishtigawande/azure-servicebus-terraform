# Service Bus queues - accepts list of queues for a namespace
resource "azurerm_servicebus_queue" "tftest" {
  for_each     = toset(var.servicebus_queue_names)
  name         = each.value
  namespace_id = azurerm_servicebus_namespace.tftest.id
  max_size_in_megabytes = var.max_size_mb

  enable_partitioning = false
}