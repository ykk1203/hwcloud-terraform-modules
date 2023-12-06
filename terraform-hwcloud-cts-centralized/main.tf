resource "huaweicloud_obs_bucket" "cts_obs_centralized" {
  bucket = var.centralized_bucket_name
  storage_class = "STANDARD"
  acl    = "private"
  multi_az = false
  encryption = true 
  force_destroy = true
  versioning = true
  kms_key_id = var.obs_kms_keyid
  # logging {
  #   target_bucket = var.obs_access_logging_bucket_name
  #   target_prefix = var.obs_access_logging_target_prefix
  # }
  lifecycle_rule {
    name = "cts_rotation"
    enabled = true
    expiration {
      days = var.cts_centralized_rotation_days
    }
  }

  tags = merge(
    { (var.tagkey) = var.tagvalue },
    var.tags,
  )
}