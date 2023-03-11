resource "linode_instance" "prod" {
    image = var.linode_image
    label = var.vm_label
    group = var.vm_group
    region = var.linode_region
    swap_size = 1024
    root_pass = var.linode_password
    type = var.small_linode_instance
}