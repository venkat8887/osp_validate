locals {
  router_name = "${var.prefix}_router_${var.random_id}"
}

resource "openstack_networking_router_v2" "router" {
  name = local.router_name
  external_network_id = data.openstack_networking_network_v2.get_external_network.id
}

resource "openstack_networking_router_interface_v2" "router_interface" {
  router_id = openstack_networking_router_v2.router.id
  subnet_id = openstack_networking_subnet_v2.internal_subnet.id
}
