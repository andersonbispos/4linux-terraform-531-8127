variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "back_provision_script" {
  default     = "./scripts/prov-back.sh"
  type        = string
  description = "Caminho para o script de provisionamento"
}