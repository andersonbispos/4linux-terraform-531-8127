/* resource "google_compute_firewall" "default" {
  name    = "default-allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
} */

resource "google_compute_firewall" "vpc_network_allow_default" {
  name    = "default-allow-ports"
  network = "vpc-network"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80"]
  }

  source_ranges = ["0.0.0.0/0"]
}