terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.32.0"
    }
  }
}

provider "google" {
  credentials = "/Users/anderson/Documents/gcp-svc/lab-terraform-8127-a61476b430e2.json"
  project     = "lab-terraform-8127"
  region      = "us-central1"
}

provider "google-beta" {
  credentials = "/Users/anderson/Documents/gcp-svc/lab-terraform-8127-a61476b430e2.json"
  project     = "lab-terraform-8127"
  region      = "us-central1"
}