resource "google_compute_instance" "vm1" {
  name         = "vm1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "vpc-lab02"

    access_config {
      
    }
  }

}