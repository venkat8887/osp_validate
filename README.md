# osp_validate
Validate the OSP by creating a test resources

One can use this terraform code to validate the working of existing Open Stack environment. The state of the Open Stack environment will be validated by creating following Open Stack resources:

  - Glance image
  - Neutron network
  - Neutron subnet
  - Neutron router
  - Cinder volume
  - Nova instance
---

## Usage:
- Install terraform(>= 0.13)
  - https://learn.hashicorp.com/tutorials/terraform/install-cli 
- Clone the git repository:  
```
$ git clone https://github.com/pratik705/osp_validate.git
$ cd osp_validate
```
- Set appropriate variables specific to your Open Stack environment in `terraform.tfvars` file.
- Create Open Stack resources:
```
$ terraform init
$ terraform plan
$ terraform apply
```
---
| Variable          | Description                                                                    | Default          | Required  |
|-------------------|--------------------------------------------------------------------------------|------------------|-----------|
| osp_auth_url      | Auth API Endpoint for Openstack                                                | None             |Yes        |
| osp_region        | Openstack region name                                                          | None             |Yes        |
| osp_user_name     | Existing Openstack user name                                                   | None             |Yes        |
| osp_user_password | Existing password for the Openstack user                                       | None             |Yes        |
| tenant_id         | Openstack tenant/project ID in which resource should be created                | None             |Yes        |
| image_id          | Glance image ID to use to boot the instance                                    | None             |Yes        |
| ssh_public_key    | Absolute path of the ssh public key to create keypair                          | None             |Yes        |
| ssh_private_key   | Absolute path of the ssh private key to access the instance once its created   | None             |Yes        |
| image_user_name   | Image user name to login the instance                                          | centos           |No         |
| boot_from_volume  | Boot the instance from volume                                                  | true             |No         |
| ticket_id         | Ticket ID to append to the OSP resource                                        | 201120-05552     |No         |
| prefix            | Prefix to the OSP resource                                                     | rax              |No         |
| az_host           | The compute node where you want to spawn an instance.<br>Format: "<availability_zone:compute_node>"   | null             |No        |
| volume_size       | Size(in GB) of the cinder volume to be created                                 | 10               |No         |
| volume_type       | Cinder volume type to create volume on specific backend                        | null             |No         |

