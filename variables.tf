variable "ingress"{
        type    = list(object({ 
        from_port       = string
        to_port         = string
        protocol        = string
        cidr_blocks     = list(string)
        description     = string
  }))
}
variable "egress"{
        type    = list(object({ 
        from_port       = string
        to_port         = string
        protocol        = string
        cidr_blocks     = list(string)
        description     = string
  }))
}

variable "security_group_enabled" {
    type = bool
}
variable "security_group_name" {
  type=string
}
variable "description"{
  type= string
  default = "dummy2"
}
variable "tags" {
  type =any
}