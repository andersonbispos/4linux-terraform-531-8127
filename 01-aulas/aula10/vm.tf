module "vm" {
    source = "git::https://github.com/andersonbispos/4linux-terraform-531-8127.git//02-labs/LAB09/tf-modules/instance"

    vm_name  = "vm1"
    vm_image = "debian-cloud/debian-11"

    vm_project = "lab-terraform-8127"

    vm_network = module.network.network_self_link
    vm_subnet  = "subnet-02"
}