resource "google_compute_disk" "disk_lab01" {
  name = "disk-lab01"
  type = "pd-balanced"
  zone = "us-central1-a"
  size = 30
}