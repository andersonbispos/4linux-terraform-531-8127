output "ip_publico_web" {
    description = "IP Publico da instance web1"
    value = google_compute_instance.web1.network_interface.0.access_config.0.nat_ip
}

output "ip_publico_web2" {
    description = "IP Publico da instance web2"
    value = google_compute_instance.web2.network_interface.0.access_config.0.nat_ip
}

output "cpu_platform_web" {
    description = "cpu platform da instance web1"
    value = google_compute_instance.web1.cpu_platform
}

output "ip_publico_db" {
    description = "IP Publico da instance dbserver1"
    value = google_compute_instance.dbserver1.network_interface.0.access_config.0.nat_ip
}