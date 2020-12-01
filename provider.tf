provider "openstack" {
  user_name = var.osp_user_name
  tenant_id = var.tenant_id
  password = var.osp_user_password
  auth_url = var.osp_auth_url
  region = var.osp_region
}