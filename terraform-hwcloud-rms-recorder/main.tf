resource "huaweicloud_rms_resource_recorder" "default" {
  agency_name = "rms_tracker_agency"

  selector {
    all_supported = true
    # resource_types = var.resource_types_list
  }
  # obs_channel {
  #   bucket = var.bucket_name
  #   region = var.delivery_region
  # }
  smn_channel {
    topic_urn = var.smn_topic_urn
  }
}