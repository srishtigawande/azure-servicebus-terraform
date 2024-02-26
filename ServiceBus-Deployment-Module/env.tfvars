resource_group="TerraformTestRG"
location = "East US 2"

namespace_name1="testnamespace1"
queue_names1=["queue1","queue2"]
topic_names1=["topic1","topic2","topic3"]

subnet_id="/subscriptions/{subscriptionId}}/resourceGroups/TerraformTestRG/providers/Microsoft.Network/virtualNetworks/TestVnet1/subnets/subnet1"

route_table_name="testRouteTable"
address_prefix1="10.100.56.7/32"
next_hop_in_ip_address1="10.100.28.0"
address_prefix_secondary="10.100.56.8/32"

namespace_name2="testnamespace2"
queue_names1=["queue5","queue6"]
topic_names1=["topic5","topic4","topic6"]

address_prefix1="10.100.56.7/32"
next_hop_in_ip_address1="10.100.28.0"
address_prefix_secondary="10.100.56.8/32"