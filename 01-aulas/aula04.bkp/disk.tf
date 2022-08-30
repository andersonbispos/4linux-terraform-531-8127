resource "google_compute_disk" "data_disk" {
  name = "data-disk"
  type = "pd-ssd"
  zone = "us-central1-a"
  size = 10
}