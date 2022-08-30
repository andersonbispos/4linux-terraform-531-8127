resource "google_compute_instance" "db" {
  name         = "db"
  machine_type = "e2-standard-2"
  zone         = google_compute_disk.default.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.test-subnetwork.self_link
    access_config {

    }
  }

  attached_disk {
    source = google_compute_disk.default.self_link
  }
}