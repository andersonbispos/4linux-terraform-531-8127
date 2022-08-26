module "vpc" {
  source = "./tf-modules/rede"

  vpc_name = "vpc-module"
  vpc_option_auto_create_subnets = false
}