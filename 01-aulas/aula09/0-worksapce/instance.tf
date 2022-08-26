resource "google_compute_instance" "vm1" {

  name = format("%s-%s", var.vm_name, terraform.workspace)

  machine_type = var.vm_size[terraform.workspace]
  zone         = var.vm_zones[terraform.workspace]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  allow_stopping_for_update = true
}

resource "google_compute_instance" "db" {

  count = "${terraform.workspace == "default" ? 0 : 1}"

  name = format("%s-%s-%s", var.vm_db_name, count.index, terraform.workspace)

  machine_type = var.vm_size[terraform.workspace]
  zone         = var.vm_zones[terraform.workspace]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  allow_stopping_for_update = true
}