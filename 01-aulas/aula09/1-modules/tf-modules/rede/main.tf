resource "google_compute_network" "vpc_network" {
  name = "vpc-network"

  auto_create_subnetworks = false
}

resource "google_compute_firewall" "allow_default_ports" {

  name    = "allow-default-ports"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  source_ranges = ["0.0.0.0/0"]
}