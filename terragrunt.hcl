inputs = {
  security_group_name = "Helloworldhcl"
  description = "description1 from hcl"
  egress = [{
    "from_port"  : "0",
    "to_port"    : "0",
    "protocol"   : "-1",
    "cidr_blocks": ["0.0.0.0/0"],
    "description": "ingress1"

    },{

    "from_port"  : "0",
    "to_port"    : "0",
    "protocol"   : "-1",
    "cidr_blocks": ["10.0.0.0/8"],
    "description": "ingress"

    },
    {
    "from_port"  : "0",
    "to_port"    : "0",
    "protocol"   : "-1",
    "cidr_blocks": ["11.0.0.0/8"],
    "description": "ingress3"

    }]
    ingress = [{
    "from_port"  : "0",
    "to_port"    : "0",
    "protocol"   : "-1",
    "cidr_blocks": ["0.0.0.0/0"],
    "description": "ingress1"

    },{

    "from_port"  : "0",
    "to_port"    : "0",
    "protocol"   : "-1",
    "cidr_blocks": ["10.0.0.0/8"],
    "description": "ingress"

    },
    {
    "from_port"  : "0",
    "to_port"    : "0",
    "protocol"   : "-1",
    "cidr_blocks": ["11.0.0.0/8"],
    "description": "ingress3"

    }]
 security_group_enabled = true
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}