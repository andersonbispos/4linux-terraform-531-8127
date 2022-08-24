resource "google_compute_instance" "modelo_vm" {

  count = var.qtd_vms

  name         = format("%s-%s-%s", "vm", var.vm_index_prefix+count.index, data.google_compute_network.my-network.name)
  machine_type = var.default_machine_type
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    network = data.google_compute_network.my-network.self_link
  }
}