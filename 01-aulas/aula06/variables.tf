/* ## ERRO: Não eh permitido atribuir o valor de uma variavel a outra variavel
## caso necessario, pode-se usar um locals.

variable "vpc_subnet_name" {
  description = "Nome da VPC"
  type        = string
  default     = var.vpc_name
} */

variable "vpc_option_auto_create_subnets" {
  description = "Define se devem ser criadas subnets automaticamente"
  type        = bool
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "tf-vpc-lab"
}

variable "disk_data_size" {
  description = "Valor para o disco de dados do banco"
  type        = number
  default     = 50

  validation {
    condition     = var.disk_data_size <= 50
    error_message = "O tamanho do disco deve ser menor que 50GB"
  }
}

variable "dbserver_name" {
  description = "Nome da vm de baco"
  type        = string
  default     = "dbserver1"
}

variable "db_default_size" {
  description = "Size padrão para o ambiente de db"
  type        = string
  default     = "e2-micro"
}

variable "web_default_size" {
  description = "Size padrão para os backends"
  type        = string
  default     = "e2-micro"
}

variable "prov_command" {
  description = "Script pra provisionamento da app"
  type        = string
  default     = "sudo apt update; sudo apt-get install nginx -y"
}

variable "prov_script" {
  description = "Caminho do script pra provisionamento da app"
  type        = string
  default     = "./scripts/prov-back.sh"
}
