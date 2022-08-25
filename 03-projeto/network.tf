resource "google_compute_network" "vpc_projeto" {

  name = var.vpc_name
  auto_create_subnetworks = true
}