locals {
  project_name = "${var.prefix}_project_${var.random_id}"
}

resource "openstack_identity_project_v3" "project" {
  name        = local.project_name
}
