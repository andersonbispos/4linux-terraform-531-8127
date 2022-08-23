resource "google_compute_firewall" "allow_db" {

  name    = "allow-db"
  network = google_compute_network.tf_vpc_lab.self_link

 allow {
    protocol = "icmp"
  }

  allow {
    ports    = ["3306"]
    protocol = "tcp"
  }

  source_tags = ["web"]
  target_tags = [local.db_tag]
}

resource "google_compute_firewall" "allow_web" {

  name    = "allow-web"
  network = google_compute_network.tf_vpc_lab.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["web"]
}