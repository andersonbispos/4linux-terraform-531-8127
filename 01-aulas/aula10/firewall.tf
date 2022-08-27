resource "google_compute_firewall" "allow_default" {

  name    = "allow-default"
  network = module.network.network_self_link

  allow {
    protocol = "icmp"
  }

  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  source_ranges = ["0.0.0.0/0"]
}