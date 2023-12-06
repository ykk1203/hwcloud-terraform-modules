variable "cts_switch" {
  description = "CTS wwitch true or false"
  type        = string
  default     = null
}
variable "lts_enable" {
  description = "To enable transfer log to LTS"
  type        = bool
  default     = false
}
# variable "data_bucket_name" {
#   description = "Data bucket to be tracked by CTS data tracker"
#   type        = string
#   default     = ""
# }
# variable "obs_access_log_bucket" {
#   description = "Bucket name to store the data logs in security account"
#   type        = string
#   default     = ""
# }
# variable "access_log_file_prefix" {
#   description = "File prefix in OBS Access Log bucket"
#   type        = string
#   default     = "OBS_Access_Log"
# }