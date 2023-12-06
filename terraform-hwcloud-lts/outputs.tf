output "log_group_id" {
  value       = huaweicloud_lts_group.log_group.id
  description = "Log Group ID"
}

output "log_stream_id" {
  value       = huaweicloud_lts_stream.log_stream.id
  description = "Log Stream ID"
}