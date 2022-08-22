terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"
    }
  }

// configuracao de backend comentada pos aula, para ficar como referencia
  /* backend "gcs" {
    bucket = "abs2022-state-bucket"
    prefix = "state"
    credentials = "/Users/anderson/Documents/gcp-svc/terraform-lab-357713-c2b3cece8835.json"
  } */
}

provider "google" {
  credentials = "/Users/anderson/Documents/gcp-svc/terraform-lab-357713-c2b3cece8835.json"
  project     = "terraform-lab-357713"
  region      = "us-east1"
}