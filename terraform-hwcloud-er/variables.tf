variable "instance_id" {
  description = "Enterprise router instance ID"
  type        = string
  default     = ""
}

variable "custom_rtb_id" {
  description = "Custom route table ID"
  type        = string
  default     = ""
}

variable "attachment_name" {
  description = "VPC attachment name"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "VPC ID that need to be attached to ER"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Subnet ID to which the VPC attachment belongs to"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "tagkey" {
  description = "Tags Key"
  type        = string
  default     = "env"
}

variable "tagvalue" {
  description = "Tags Value"
  type        = string
  default     = ""
}