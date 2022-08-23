resource "google_compute_network" "tf_vpc_lab" {

  name = var.vpc_name

  auto_create_subnetworks = var.vpc_option_auto_create_subnets
}