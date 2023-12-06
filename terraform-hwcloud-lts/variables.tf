variable "log_group_name" {
  description = "Log Group Name"
  type        = string
  default     = ""
}
variable "log_retention_duration" {
  description = "Log Retention Duration"
  type        = number
  default     = 7
}
variable "log_stream_name" {
  description = "Log Stream Name"
  type        = string
  default     = ""
}