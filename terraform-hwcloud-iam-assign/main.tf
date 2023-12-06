# assign the subaccount permission to user group
resource "huaweicloud_identity_group_role_assignment" "assign_role" {
  group_id  = var.assign_group_id
  role_id   = var.assign_policy_id
  domain_id = var.assign_domain_id
}