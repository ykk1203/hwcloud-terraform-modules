output "vol_encrypt_id" {
  value       = huaweicloud_rms_policy_assignment.assign_vol_encrypt.id
  description = "volumes-encrypted-check ID"
}
output "vol_unused_id" {
  value       = huaweicloud_rms_policy_assignment.assign_vol_unused.id
  description = "volume-unused-check ID"
}
output "tag_check_id" {
  value       = huaweicloud_rms_policy_assignment.assign_tag_check.id
  description = "required-tag-check ID"
}