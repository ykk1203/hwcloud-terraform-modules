data "huaweicloud_rms_policy_definitions" "vol_encrypt" {
  name = "volumes-encrypted-check"
}
resource "huaweicloud_rms_policy_assignment" "assign_vol_encrypt" {
  name                 = "volumes-encrypted-check"
  policy_definition_id = try(data.huaweicloud_rms_policy_definitions.vol_encrypt.definitions[0].id, "")
  status               = "Enabled"
}
data "huaweicloud_rms_policy_definitions" "vol_unused" {
  name = "volume-unused-check"
}
resource "huaweicloud_rms_policy_assignment" "assign_vol_unused" {
  name                 = "volume-unused-check"
  policy_definition_id = try(data.huaweicloud_rms_policy_definitions.vol_unused.definitions[0].id, "")
  status               = "Enabled"
}
data "huaweicloud_rms_policy_definitions" "tag_check" {
  name = "required-tag-check"
}
resource "huaweicloud_rms_policy_assignment" "assign_tag_check" {
  name                 = "required-tag-check"
  policy_definition_id = try(data.huaweicloud_rms_policy_definitions.tag_check.definitions[0].id, "")
  status               = "Enabled"

  # change this accordingly based on requirements
  parameters = {
    "specifiedTagKey"   = "\"env\""
    "specifiedTagValue" = "[\"prod\", \"nonprod\", \"uat\", \"dev\"]"
  }
}