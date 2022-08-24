resource "google_compute_instance" "modelo_vm_br" {

  for_each = var.vm_defs_nome_zona
  /* count = length(var.webzones_br) */

  /* name         = format("%s-%s-%s", var.vm_name_prefix, count.index, data.google_compute_network.my-network.name) */
  /* name = each.key  */
  name = each.key
  zone = each.value

  machine_type = var.default_machine_type

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    network = data.google_compute_network.my-network.self_link

    access_config {

    }
  }
}