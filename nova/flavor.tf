locals {
  flavor_name = "${var.prefix}_flavor_${var.random_id}"
}

resource "openstack_compute_flavor_v2" "compute_flavor" {
  name = local.flavor_name
  disk = var.disk
  ram = var.ram
  vcpus = var.vcpus
}
