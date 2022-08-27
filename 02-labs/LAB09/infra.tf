module "vpc" {
  source = "./tf-modules/vpc/"

  vpc_name    = "vpc-example"
  vpc_project = "lab-terraform-8127"

  auto_create_subnetworks = true
}

module "vm1" {
  source = "./tf-modules/instance/"

  vm_name  = "vm1"
  vm_image = "debian-cloud/debian-11"

  vm_project = "lab-terraform-8127"

  vm_network = module.vpc.vpc_self_link
  vm_subnet  = "vpc-example"
}