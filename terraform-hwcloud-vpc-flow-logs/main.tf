resource "huaweicloud_vpc_flow_log" "default" {
  name          = var.flow_log_name
  enabled       = true
  resource_type = "vpc"
  resource_id   = var.resource_vpc_id
  traffic_type  = "all"
  log_group_id  = var.log_group_id
  log_stream_id = var.log_stream_id
}