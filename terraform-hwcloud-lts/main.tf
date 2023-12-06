resource "huaweicloud_lts_group" "log_group" {
  group_name  = var.log_group_name
  ttl_in_days = var.log_retention_duration
}

resource "huaweicloud_lts_stream" "log_stream" {
  group_id    = huaweicloud_lts_group.log_group.id
  stream_name = var.log_stream_name

  depends_on = [
    huaweicloud_lts_group.log_group
  ]
}