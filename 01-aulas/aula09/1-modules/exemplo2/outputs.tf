output "vpc_name" {
  value = module.vpc.vpc_name
}

output "firewall_name" {
  value = module.vpc.firewall_rule_name
}