resource "google_compute_instance" "web1" {
  name         = "web1"
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
    google_compute_instance.db,
    google_compute_firewall.allow_default_ports
  ]
}

resource "google_compute_instance" "web2" {
  name         = "web2"
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
    google_compute_instance.db,
    google_compute_firewall.allow_default_ports
  ]
}