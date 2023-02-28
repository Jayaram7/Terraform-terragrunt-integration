resource "aws_security_group" "one_securitygroup" {
  count = local.security_group_enabled && var.security_group_enabled ? 1 : 0
  name                   = var.security_group_name
  description            = var.description
  #vpc_id                 = var.vpc_id
  #revoke_rules_on_delete = var.revoke_rules_on_delete

  tags = var.tags
  

}

resource "aws_security_group_rule" "egress_rules" {
  #count =  length(var.egress_rules) 
  security_group_id = aws_security_group.one_securitygroup[0].id
  type              = "egress"
  for_each = {for i, v in var.egress_rules:  i => v}

  cidr_blocks      = each.value.cidr_blocks
  description      = each.value.description
  from_port = each.value.from_port
  to_port   = each.value.to_port
  protocol  = each.value.protocol

}

resource "aws_security_group_rule" "ingress_rules" {
  security_group_id = aws_security_group.one_securitygroup[0].id
  type              = "ingress"
  for_each = {for i, v in var.ingress_rules:  i => v}  
  cidr_blocks      = each.value.cidr_blocks
  description      = each.value.description
  from_port = each.value.from_port
  to_port   = each.value.to_port
  protocol  = each.value.protocol
}