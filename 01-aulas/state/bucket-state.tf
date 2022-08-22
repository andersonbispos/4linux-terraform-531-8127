resource "google_storage_bucket" "bucket_state" {
  name          = "abs_terraform_531_8129"
  location      = "US-CENTRAL1"
  force_destroy = true

  versioning {
    enabled = true
  }
}