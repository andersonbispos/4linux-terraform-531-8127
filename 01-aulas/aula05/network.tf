resource "google_compute_network" "tf_vpc_lab" {

  name = "tf-vpc-lab"

  auto_create_subnetworks         = false
  delete_default_routes_on_create = false
  enable_ula_internal_ipv6        = false
}