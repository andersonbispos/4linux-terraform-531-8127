resource "google_compute_instance" "db" {
  name         = "db"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_network.vpc_network.name

    access_config {

    }
  }

  attached_disk {
    source = google_compute_disk.data_disk.self_link
  }
}