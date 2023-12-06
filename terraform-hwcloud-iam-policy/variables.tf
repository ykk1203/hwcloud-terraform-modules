variable "custom_policy_name" {
  description = "IAM Role with Custom Policy"
  type        = string
  default     = ""
}
# variable "custom_policy_level" {
#   description = "Account Level (AX) and Project Level (XA)"
#   type        = string
#   default     = ""
# }
variable "custom_policy_content" {
  description = "Custom Policy Content in JSON Format"
  type        = string
  default     = ""
}