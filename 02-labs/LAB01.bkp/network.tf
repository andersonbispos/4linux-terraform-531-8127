resource "google_compute_network" "vpc_lab01" {
  name = "vpc-lab01"

  auto_create_subnetworks = true
}