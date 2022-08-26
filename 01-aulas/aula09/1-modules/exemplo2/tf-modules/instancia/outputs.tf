output "vm_name" {
  description = "vm_name"
  value       = google_compute_instance.vm1.name
}

output "vm_selflink" {
  description = "vm_self_link"
  value       = google_compute_instance.vm1.self_link
}