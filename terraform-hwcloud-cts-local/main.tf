resource "huaweicloud_cts_tracker" "default" {
  lts_enabled = var.lts_enable
  enabled = tostring(try(var.cts_switch, true))
}

# resource "huaweicloud_cts_data_tracker" "default" {
#   name = "cts_data_tracker"
#   data_bucket = var.data_bucket_name
#   bucket_name = var.obs_access_log_bucket
#   file_prefix = var.access_log_file_prefix
#   lts_enabled = true
#   enabled = tostring(try(var.cts_switch, true))
# }