resource "google_compute_instance" "modelo_vm_br" {

  // loop para criacao de recursos usando count+list:
  // count = length(var.webzones_br)
  // name = var.webnames_br[count.index]
  // zone = var.webzones_br[count.index]

  // exemplo de uso do format para formatar o nome dos recursos
  // name         = format("%s-%s-%s", var.vm_name_prefix, count.index, data.google_compute_network.my-network.name) */

  // loop para criacao de recursos usando o for_each+map:
  for_each = var.vm_defs_nome_zona

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