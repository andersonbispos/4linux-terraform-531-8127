variable "vm_name" {
  type    = string
  default = "vm-example"
}

variable "vm_db_name" {
  type    = string
  default = "vm-db"
}

variable "vm_size" {
  type = map(string)
  default = {
    default = "e2-standard-2"
    dev     = "e2-micro"
  }
}

variable "project" {
  type = map(string)
  default = {
    default = "lab-terraform-8127"
    dev     = "terraform-lab-357713"
  }
}

variable "vm_zones" {
  type = map(string)
  default = {
    default = "southamerica-east1-c"
    dev     = "us-central1-a"
  }
}