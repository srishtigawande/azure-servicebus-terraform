variable "resource_group" {
  type = string
}

variable "location" {
  type = string
}

variable "namespace_name1" {
  type = string
}

variable "queue_names1" {
  type    = list(string)
  default = []
}

variable "topic_names1" {
  type    = list(string)
  default = []
}

variable "subnet_id" {
  type = string
}

variable "route_table_name" {
  type = string
}

variable "address_prefix1" {
  type = string
}

variable "next_hop_in_ip_address1" {
  type = string
}

variable "address_prefix_secondary1" {
  type = string
}

variable "namespace_name2" {
  type = string
}

variable "queue_names2" {
  type    = list(string)
  default = []
}

variable "topic_names2" {
  type    = list(string)
  default = []
}

variable "address_prefix2" {
  type = string
}

variable "next_hop_in_ip_address2" {
  type = string
}

variable "address_prefix_secondary2" {
  type = string
}