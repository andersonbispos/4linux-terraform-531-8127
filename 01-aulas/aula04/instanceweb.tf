resource "google_compute_instance" "web1" {
  name         = "web1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tf_lab_subnet.self_link

    access_config {

    }
  }

  depends_on = [
    google_compute_firewall.vpc_network_allow_default,
    google_compute_instance.db
  ]
}

/* resource "google_compute_instance" "web2" {
  name         = "web2"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.tf_lab_subnet.self_link

    access_config {

    }
  }

  depends_on = [
    google_compute_firewall.vpc_network_allow_default,
    google_compute_instance.db
  ]
} */