variable "vpc_option_auto_create_subnets" {
  description = "Define se devem ser criadas subnets automaticamente"
  type        = bool
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "tf-vpc-lab"
}

/* ## ERRO: Não eh permitido atribuir o valor de uma variavel a outra variavel
## caso necessario, pode-se usar um locals.

variable "vpc_subnet_name" {
  description = "Nome da VPC"
  type        = string
  default     = var.vpc_name
} */

variable "disk_data_size" {
  description = "Valor para o disco de dados do banco"
  type        = number
  default     = 50

  validation {
    condition     = var.disk_data_size <= 50
    error_message = "O tamanho do disco deve ser menor que 50GB"
  }
}