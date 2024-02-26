module "servicebus1" {
  source = "git@github.com:srishtigawande/servicebus-terraform-common-template.git//ServiceBus-Common-Template"

  resource_group=var.resource_group
  location=var.location
  servicebus_namespace=var.namespace_name1
  servicebus_queue_names=var.queue_names1
  servicebus_topic_names=var.topic_names1
  subnet_id=var.subnet_id
  max_size_mb=5120
  route_table_name=var.route_table_name
  address_prefix=var.address_prefix1
  next_hop_in_ip_address=var.next_hop_in_ip_address1
  create_disaster_recovery=true
  subnet_id_secondary=var.subnet_id
  route_table_name_secondary=var.route_table_name
  address_prefix_secondary=var.address_prefix_secondary1
  next_hop_in_ip_address_secondary=var.next_hop_in_ip_address1
}

module "servicebus2" {
  source = "git@github.com:srishtigawande/servicebus-terraform-common-template.git//ServiceBus-Common-Template"

  resource_group=var.resource_group
  location=var.location
  servicebus_namespace=var.namespace_name2
  servicebus_queue_names=var.queue_names2
  servicebus_topic_names=var.topic_names2
  subnet_id=var.subnet_id2
  max_size_mb=5120
  route_table_name=var.route_table_name
  address_prefix=var.address_prefix2
  next_hop_in_ip_address=var.next_hop_in_ip_address2
  create_disaster_recovery=true
  subnet_id_secondary=var.subnet_id
  route_table_name_secondary=var.route_table_name
  address_prefix_secondary=var.address_prefix_secondary2
  next_hop_in_ip_address_secondary=var.next_hop_in_ip_address2
}
