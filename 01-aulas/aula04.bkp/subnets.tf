resource "google_compute_subnetwork" "tf_lab_subnet" {
  name          = google_compute_network.vpc_network.name
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.self_link

  region = "us-central1"
}