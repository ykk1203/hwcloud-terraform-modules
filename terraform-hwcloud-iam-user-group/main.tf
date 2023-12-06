# create user group on delagated account (CIM)
resource "huaweicloud_identity_group" "user_group" {
  name        = var.user_group_name
  description = "User Group created by Terraform"
}