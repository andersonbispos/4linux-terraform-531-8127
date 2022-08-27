/* module "vpc" {
    source = "git::https://github.com/andersonbispos/4linux-terraform-531-8127.git//02-labs/LAB09/tf-modules/vpc"
    source = "github.com/andersonbispos/4linux-terraform-531-8127/02-labs/LAB09/tf-modules/vpc"

    vpc_project     = "lab-terraform-8127"
    auto_create_subnetworks = false
} */

/* module "network_vpc" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "5.2.0"

  network_name = "vpc-mod-remoto"
  project_id = "lab-terraform-8127"
} */

module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.2.0"

  network_name = "vpc-mod-remoto"
  project_id   = "lab-terraform-8127"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "us-west1"
    },
    {
      subnet_name   = "subnet-02"
      subnet_ip     = "10.10.20.0/24"
      subnet_region = "us-central1"
    },
  ]
}