resource "google_compute_network" "vpc_network" {
  name = "vpc-network"

  auto_create_subnetworks = var.vpc_option_auto_create_subnets

  project = var.vpc_project
}

resource "google_compute_firewall" "allow_default_ports" {

  name    = "allow-default-ports"
  network = google_compute_network.vpc_network.self_link

  project = var.vpc_project

  allow {
    protocol = "icmp"
  }

  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  source_ranges = ["0.0.0.0/0"]
}