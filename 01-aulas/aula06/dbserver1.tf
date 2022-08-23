resource "google_compute_instance" "dbserver1" {
  name         = var.dbserver_name
  machine_type = var.db_default_size
  zone         = local.db_zone

  tags = [local.db_tag]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.tf_vpc_lab.self_link
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  attached_disk {
    source = google_compute_disk.dados.self_link
  }
}