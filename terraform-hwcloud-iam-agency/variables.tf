variable "centralized_iam_account_name" {
  description = "Centralized IAM Account Name"
  type        = string
  default     = ""
}
variable "agency_name" {
  description = "Agency Name"
  type        = string
  default     = ""
}
variable "region" {
  description = "Name of the Project"
  type        = string
  default     = "ap-southeast-3"
}
variable "project_role" {
  description = "List of Project Roles"
  type        = list(string)
  default     = [""]
}
variable "domain_role" {
  description = "List of Project Roles"
  type        = list(string)
  default     = [""]
}
variable "all_resources_roles" {
  type        = list(string)
  default     = [""]
}