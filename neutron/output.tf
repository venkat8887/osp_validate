output "internal_network_id" {
  value = openstack_networking_network_v2.internal_network.id
}

output "internal_subnet_id" {
  value = openstack_networking_subnet_v2.internal_subnet.id
}

output "router_id" {
  value = openstack_networking_router_v2.router.id
}

output "security_group_id" {
  value = openstack_networking_secgroup_v2.sec_group.id
}

output "floating_network_name" {
  value = data.openstack_networking_network_v2.get_external_network.name
}