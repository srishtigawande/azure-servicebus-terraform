variable "resource_group" {
  type = string
}

variable "sku" {
  type = string
}

variable "servicebus_namespace" {
  type = string
}

variable "servicebus_queue_names" {
  type    = list(string)
  default = []
}

variable "servicebus_topic_names" {
  type    = list(string)
  default = []
}

variable "subnet_id" {
  type = string
  description = "subnet id for private endpoint connection"
}

variable "subnet_id_secondary" {
  type = string
  description = "subnet id for private endpoint connection"
  default = null
}

variable "max_size_mb" {
  type = number
}

variable "route_table_name" {
  type = string
}

variable "address_prefix" {
  type = string
}

variable "next_hop_in_ip_address" {
  type = string
}

variable "route_table_name_secondary" {
  type = string
  default = null
}

variable "address_prefix_secondary" {
  type = string
  default = null
}

variable "next_hop_in_ip_address_secondary" {
  type = string
  default = null
}

variable "create_disaster_recovery" {
  type = bool
  description = "disaster recovery backup namespace required or not"
  default = false
}

variable "location" {
  type = string
}

# variable "network_default_action" {
#   type = string
#   default = "Allow"
# }

# variable "ip_rules" {
#   default = null
# }

# variable "ignore_missing_vnet_service_endpoint" {
#   default = false
# }

# variable "network_rules_subnet_id" {
#   default = null
# }

# variable "create_network_rule" {
#   type = bool
#   description = "network rule for namespace required or not"
#   default = false
# }