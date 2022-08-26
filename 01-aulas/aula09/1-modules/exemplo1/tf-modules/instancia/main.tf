resource "google_compute_instance" "vm1" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network    = var.vm_network
    subnetwork = var.vm_subnet
  }
}