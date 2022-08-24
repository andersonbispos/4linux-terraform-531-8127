resource "google_compute_instance" "modelo_vm_set" {

  // exemplo de uso do for_each+set:
  for_each = var.vm_name_set

  name = each.key
  machine_type = var.default_machine_type
  zone         = var.default_webzones[0]

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    network = data.google_compute_network.my-network.self_link
  }
}