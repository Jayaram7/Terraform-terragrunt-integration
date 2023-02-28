module "security_group"{
    count = var.security_group_enabled ? 1 :0
    source = "./ec2/security-group"
    ingress_rules = var.ingress
    egress_rules = var.egress
    description = var.description
    security_group_name = var.security_group_name
    tags = var.tags
}

