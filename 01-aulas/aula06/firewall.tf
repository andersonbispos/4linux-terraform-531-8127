/* resource "google_compute_firewall" "allow_ssh" {

  name    = "allow-ssh"
  network = google_compute_network.tf_vpc_lab.self_link

  project = "lab-terraform-8127"

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
} */