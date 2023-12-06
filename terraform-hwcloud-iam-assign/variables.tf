variable "assign_group_id" {
  description = "User Group ID to assign role"
  type        = string
  default     = ""
}
variable "assign_policy_id" {
  description = "Custom Policy ID to assign to User Group"
  type        = string
  default     = ""
}
variable "assign_domain_id" {
  description = "Sub-accounts ID to assign role"
  type        = string
  default     = ""
}