variable "vm_name_prefix" {
  description = "Define o prefixo a ser utilizado ao criar novas instancias"
  type        = string
  default     = "vm"
}

variable "vm_index_prefix" {
  description = "Define o prefixo a ser utilizado ao criar novas instancias"
  type        = number
  default     = 3
}

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "qtd_vms" {
  type    = number
  default = 2
}