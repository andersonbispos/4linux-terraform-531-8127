variable "vpc_option_auto_create_subnets" {
  description = "Define se devem ser criadas subnets automaticamente"
  type        = bool
}

variable "vpc_project" {
  description = "vpc_project"
  type    = string
}

variable "vpc_name" {
  description = "Nome padrão da VPC"
  type        = string
  default     = "vpc-example"
}