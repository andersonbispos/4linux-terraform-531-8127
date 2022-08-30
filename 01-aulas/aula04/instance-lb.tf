resource "google_compute_instance" "instance-lb" {
  name         = "instance-lb"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"

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

  depends_on = [
    google_compute_instance.web1,
    google_compute_instance.web2
  ]
}