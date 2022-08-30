resource "google_compute_subnetwork" "test-subnetwork" {
  name          = "test-subnetwork"
  ip_cidr_range = "10.10.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.self_link
}