# Service Bus topics - accepts list of topics for a namespace
resource "azurerm_servicebus_topic" "tftest" {
  for_each     = toset(var.servicebus_topic_names) #accepts array of topic names
  name         = each.value
  namespace_id = azurerm_servicebus_namespace.tftest.id
  max_size_in_megabytes = var.max_size_mb

  enable_partitioning = false
}