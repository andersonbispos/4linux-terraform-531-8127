resource "google_compute_firewall" "vpc_network_allow_default" {
  name    = "default-allow-ports"
  network = "vpc-lab02"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}