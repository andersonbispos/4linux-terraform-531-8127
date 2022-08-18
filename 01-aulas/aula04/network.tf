resource "google_compute_network" "vpc_network" {
  name = "vpc-network"

  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "tf_lab_subnet" {
  name          = "vpc-network-subnet1"
  ip_cidr_range = "10.0.1.0/24"
  network       = "vpc-network"

  region = "us-central1"
}