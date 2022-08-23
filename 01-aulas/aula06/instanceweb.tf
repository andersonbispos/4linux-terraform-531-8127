resource "google_compute_instance" "web1" {
  name         = "web1"
  machine_type = "e2-micro"
  zone         = "us-east1-c"

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {

    }
  }

  metadata_startup_script = file(var.prov_script)
}

resource "google_compute_instance" "web2" {
  name         = "web2"
  machine_type = "e2-micro"
  zone         = "us-east1-b"

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {

    }
  }

  metadata_startup_script = file(var.prov_script)
}