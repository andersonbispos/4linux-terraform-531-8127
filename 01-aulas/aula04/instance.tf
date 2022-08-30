/* resource "google_compute_instance" "vm1" {
  name         = "test"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "vpc-network"
    subnetwork = "test-subnetwork"
  }

  attached_disk {
    source = "test-disk"
  }
} */