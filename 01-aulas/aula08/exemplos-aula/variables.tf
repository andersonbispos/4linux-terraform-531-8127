variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

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

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "qtd_vms" {
  type    = number
  default = 3
}

// exemplos de listas

variable "default_webzones" {
  description = "Zonas onde serao criadas as instancias web"
  type        = list(string)
  default     = ["us-east1-c", "southamerica-east1-c", "us-central1-c"]
}

variable "webnames_br" {
  description = "Nome que serao dados as instancias web"
  type        = list(string)
  default     = ["web1", "web2"]
}

variable "webzones_br" {
  description = "Zonas onde serao criadas as instancias web"
  type        = list(string)
  default     = ["southamerica-east1-a", "southamerica-east1-c"]
}

//exemplo de set

variable "vm_name_set" {
  type    = set(any)
  default = ["vm9", "vm5", "vm4", "vm5", "vm9", "vm5", "vm8"]
}

//exemplo de maps
variable "vm_defs" {
  type        = map(string)
  description = "Nome da VMS"
  default = {
    vm_name = "vm1"
    vm_zone = "us-east1-b"
  }
}

variable "vm_defs_nome_zona" {
  type        = map(string)
  description = "Nome da VMS"
  default = {
    web1 = "southamerica-east1-a",
    web2 = "southamerica-east1-c"
  }
}

// exemplo de tupla

variable "tuple" {
  default = [3, "elementos", "diferentes", true]
  type    = tuple([number, string, string, bool])
}

variable "tuple_disk" {
  type    = tuple([string, string, string, number])
  default = ["dados", "pd-ssd", "us-east1-c", 50]
}

// exemplo de object

variable "object" {
  default = { name = "Alfa", region = "southamerica-east1", amount = 5, tags = ["prod", "terraform"] }
  type = object({
    name   = string
    region = string
    amount = number
    tags   = list(string)
  })
}

variable "disk_object" {
  default = { diskName = "dados", diskType = "pd-ssd", diskZone = "us-east1-c", diskSize = 30 }
  type = object({
    diskName = string
    diskType = string
    diskZone = string
    diskSize = number
  })
}