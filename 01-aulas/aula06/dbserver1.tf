resource "google_compute_instance" "dbserver1" {
  name         = "dbserver1"
  machine_type = "e2-micro"
  zone         = local.db_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.tf_vpc_lab.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  attached_disk {
    source = google_compute_disk.dados.self_link
  }

}