variable "flow_log_name" {
  description = "VPC Flow Logs Name"
  type        = string
  default     = ""
}
variable "resource_vpc_id" {
  description = "Resource type VPC ID"
  type        = string
  default     = ""
}
variable "log_group_id" {
  description = "Log Group ID to store the VPC Flow Logs"
  type        = string
  default     = ""
}
variable "log_stream_id" {
  description = "Log Stream ID to store the VPC Flow Logs"
  type        = string
  default     = ""
}