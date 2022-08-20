/* resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = "default"

  source_ranges = ["0.0.0.0/0"]

  allow {
    ports    = ["80"]
    protocol = "tcp"
  }
} */