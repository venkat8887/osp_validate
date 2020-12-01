locals {
  keypair_name = "${var.prefix}_keypair_${var.random_id}"
}

resource "openstack_compute_keypair_v2" "keypair_k1" {
  name = local.keypair_name
  public_key = file(var.ssh_public_key)
}
