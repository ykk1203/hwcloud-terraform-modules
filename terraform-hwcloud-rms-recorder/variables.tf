variable "smn_topic_urn" {
  description = "SMN Topic URN"
  type        = string
  default     = ""
}
variable "resource_types_list" {
  description = "Resource Types List"
  type        = list(string)
  default     = [""]
}