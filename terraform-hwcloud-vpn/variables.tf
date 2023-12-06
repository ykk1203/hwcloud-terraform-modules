variable "name" {
  description = "VPN Name"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "VPN VPC ID"
  type        = string
  default     = ""
}
variable "local_subnets" {
  description = "Local subnets that used to communicate via VPN"
  type        = list(string)
  default     = [""]
}
variable "vpn_subnet" {
  description = "Subnet used to accomodate the VPN Gateway"
  type        = string
  default     = ""
} 
variable "vpn_az" {
  description = "List of availability zone"
  type        = list(string)
  default     = [""]
}
variable "vpngw_asn_number" {
  description = "VPN ASN number"
  type        = number
  default     = 64512
}
variable "vpn_master_eip_name" {
  description = "Master EIP name"
  type        = string
  default     = ""
}
variable "vpn_slave_eip_name" {
  description = "Slave EIP name"
  type        = string
  default     = ""
}