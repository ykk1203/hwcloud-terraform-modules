variable "smn_topic_name" {
  description = "smn topic name"
  type        = string
  default     = ""
}

variable "cts_important_notify_email" {
  description = "email for recieve the notices"
  type        = string
  default     = ""
}

variable "cts_important_notify_phone" {
  description = "phone for recieve the notices"
  type        = string
  default     = ""
}

variable "root_account_name" {
  description = "this is root account name"
  type        = string
  default     = ""
}

variable "keyOperate_notify" {
  description = "key event notification name"
  type        = string
  default     = ""
}

variable "keyOperate_notify_login" {
  description = "key event notification name"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
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