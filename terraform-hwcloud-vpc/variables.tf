variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "0.0.0.0/0"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
# this is by default pointing to Singapore Region DNS, please change it accordingly
variable "primary_dns" {
  description = "The dns for all subnets"
  type        = string
  default     = "100.125.1.250"
}
# this is by default pointing to Singapore Region DNS, please change it accordingly
variable "secondary_dns" {
  description = "The dns for all subnets"
  type        = string
  default     = "100.125.128.250"
}

variable "er_subnet_name" {
  description = "This is ER subnet name"
  type        = string
  default     = "er_subnet"
}

variable "er_subnet_cidr" {
  description = "This is cidr block for er subnet"
  type        = string
  default     = ""
}

variable "public_subnet_name" {
  description = "This is public subnet name"
  type        = string
  default     = "public_subnet"
}

variable "public_subnet_cidr" {
  description = "This is cidr block for public subnet"
  type        = string
  default     = ""
}

variable "private_subnet_name" {
  description = "This is private subnet name"
  type        = string
  default     = "private_subnet"
}

variable "private_subnet_cidr" {
  description = "This is cidr block for private subnet"
  type        = string
  default     = ""
}

variable "ingress_subnet_name" {
  description = "This is ingress subnet name"
  type        = string
  default     = "ingress_subnet"
}

variable "ingress_subnet_cidr" {
  description = "This is cidr block for ingress subnet"
  type        = string
  default     = ""
}

variable "egress_subnet_name" {
  description = "This is egress subnet name"
  type        = string
  default     = "egress_subnet"
}

variable "egress_subnet_cidr" {
  description = "This is cidr block for egress subnet"
  type        = string
  default     = ""
}

variable "database_subnet_name" {
  description = "This is database subnet name"
  type        = string
  default     = "database_subnet"
}

variable "database_subnet_cidr" {
  description = "This is cidr block for database subnet"
  type        = string
  default     = ""
}

variable "access_subnet_name" {
  description = "This is access subnet name"
  type        = string
  default     = "cce_subnet"
}

variable "access_subnet_cidr" {
  description = "This is cidr block for access subnet"
  type        = string
  default     = ""
}

variable "egress_nat_gw_name" {
  description = "This is nat gateway for egress as default"
  type        = string
  default     = "egress_nat_gw"
}
variable "nat_eip_name" {
  description = "This is nat eip for egress as default"
  type        = string
  default     = "eip_nat_bgp"
}
variable "ingress_elb_name" {
  description = "This is elb for ingress as default"
  type        = string
  default     = "ingress_elb"
}
variable "elb_az" {
  description = "Availability zone that used to place ELB"
  type        = list(string)
  default     = [""]
}

variable "tagkey" {
  description = "Tags key"
  type        = string
  default     = "env"
}

variable "tagvalue" {
  description = "Tags Value"
  type        = string
  default     = ""
}

variable "nattagkey" {
  description = "NAT Tags key"
  type        = string
  default     = "env"
}

variable "nattagvalue" {
  description = "NAT Tags Value"
  type        = string
  default     = ""
}

variable "elbtagkey" {
  description = "ELB Tags key"
  type        = string
  default     = "env"
}

variable "elbtagvalue" {
  description = "ELB Tags Value"
  type        = string
  default     = ""
}