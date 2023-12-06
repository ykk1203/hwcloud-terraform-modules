# create custom policy in delagated account (CIM)
resource "huaweicloud_identity_role" "custom_policy" {
  name        = var.custom_policy_name
  description = "Custom Policy created by Terraform"
  type        = "AX"
  policy      = var.custom_policy_content
}