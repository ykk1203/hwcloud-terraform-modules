# enhanced identity password policy --> current version does not support this module
resource "huaweicloud_identity_password_policy" "enhanced" {
  password_char_combination             = 4
  minimum_password_length               = 8
  number_of_recent_passwords_disallowed = 2
  password_validity_period              = 180
}

# create users on delegated account (CIM)
resource "huaweicloud_identity_user" "user" {
  name     = var.username
  enabled  = true
  password = var.user_password
  pwd_reset = true
  access_type = "default"
}