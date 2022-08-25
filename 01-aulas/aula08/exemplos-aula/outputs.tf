//exemplos de outputs com `count | list`
/* output "webs_names" {
  value = google_compute_instance.modelo_vm[*].name
}

output "webs_access_ip" {
  value = google_compute_instance.modelo_vm[*].network_interface.0.access_config.0.nat_ip
} */

//exemplos de outputs com `for_each | map`
output "webs_names" {
  value = values(google_compute_instance.modelo_vm_br)[*].name
}

output "webs_access_ip" {
  value = values(google_compute_instance.modelo_vm_br)[*].network_interface.0.access_config.0.nat_ip
}