resource "google_compute_subnetwork" "tf_lab_subnet" {
  name          = "subnet1"
  ip_cidr_range = "10.0.1.0/24"
  network       = module.vpc.vpc_selflink

  region = "us-central1"
}