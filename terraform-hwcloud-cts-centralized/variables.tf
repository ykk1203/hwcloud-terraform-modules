variable "cts_centralized_rotation_days" {
  description = "cts centralized rotation days"
  type        = number
  default     = 180
}

variable "centralized_bucket_name" {
  description = "Centralized bucket name to store CTS logs in security account"
  type        = string
  default     = ""
}
# variable "obs_access_logging_bucket_name" {
#   description = "Bucket name to store the OBS access logging in security account"
#   type        = string
#   default     = ""
# }
# variable "obs_access_logging_target_prefix" {
#   description = "The key prefix for the log objects"
#   type        = string
#   default     = ""
# }
variable "obs_kms_keyid" {
  description = "KMS Key used to encrypt centralized OBS Bucket"
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