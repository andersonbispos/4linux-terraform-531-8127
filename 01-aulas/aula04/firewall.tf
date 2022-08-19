resource "google_compute_firewall" "vpc_network_allow_default" {
  name    = "default-allow-ports"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
}