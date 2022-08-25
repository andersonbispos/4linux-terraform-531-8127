resource "google_compute_firewall" "allow-default-ports" {
  name    = "allow-default-ports"
  network = google_compute_network.tf_vpc_lab.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["webapp"]
}