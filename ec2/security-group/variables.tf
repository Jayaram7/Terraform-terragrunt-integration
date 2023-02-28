variable security_group_name{
    type= string
}

variable description{
    type= string
}
variable "tags" {
  type=any
}
variable ingress_rules{
    type=list(object({
        from_port       = string
        to_port         = string
        protocol        = string
        cidr_blocks     = list(string)
        description     = string
    }


    ))
    default=[]
}
variable egress_rules{
    type=list(object({
        from_port       = string
        to_port         = string
        protocol        = string
        cidr_blocks     = list(string)
        description     = string
 } ))
    default=[]
}
variable security_group_enabled {
    type= bool
    default=true
}