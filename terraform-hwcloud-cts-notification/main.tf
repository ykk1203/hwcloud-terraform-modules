# for default region
resource "huaweicloud_smn_topic" "cts_important_notices" {
  name         = var.smn_topic_name
  display_name = "The CTS important notification"
  tags = merge(
    { (var.tagkey) = var.tagvalue },
    var.tags,
  )
}

resource "huaweicloud_smn_subscription" "cts_imp_notices_email_subcription" {
  # count =  length(var.cts_important_notify_email) > 0  ? 1 : 0
  topic_urn = huaweicloud_smn_topic.cts_important_notices.id
  endpoint  =  var.cts_important_notify_email
  protocol  = "email"
}

# resource "huaweicloud_smn_subscription" "cts_imp_notices_sms_subcription" {
#   count =  length(var.cts_important_notify_phone) > 0  ? 1 : 0     
#   topic_urn = huaweicloud_smn_topic.cts_important_notices.id
#   endpoint  =  var.cts_important_notify_phone
#   protocol  = "sms"
# }

resource "huaweicloud_cts_notification" "cts_notify" {
  name           = var.keyOperate_notify
  operation_type = "customized"
  smn_topic      = huaweicloud_smn_topic.cts_important_notices.topic_urn

  operations {
    service     = "KMS"
    resource    = "cmk"
    trace_names = ["disableKey", "deleteKeyRiskTips", "scheduleKeyDeletion", "cancelKeyDeletion"]
  }
  operations { 
    service     = "OBS"
    resource    = "bucket"
    trace_names = ["deleteBucketPolicy", "setBucketPolicy"]
  }
  operations { 
    service     = "VPC"
    resource    = "vpc"
    trace_names = ["createVpc", "deleteVpc", "modifyVpc"]
  }
  operations { 
    service     = "VPC"
    resource    = "security-groups"
    trace_names = ["createSecurity-group", "updateSecurity-group", "deleteSecurity-group"]
  }
  operations { 
    service     = "VPC"
    resource    = "vpn"
    trace_names = ["deleteVpn", "modifyVpn"]
  }   
  operations { 
    service     = "CTS"
    resource    = "tracker"
    trace_names = ["updateTracker", "deleteTracker"]
  }
  operations { 
    service     = "VPC(NAT)"
    resource    = "dnatrule"
    trace_names = ["createDnatRule", "updateDnatRule", "deleteDnatRule"]
  }
  operations { 
    service     = "VPC(NAT)"
    resource    = "snatrule"
    trace_names = ["createSnatRule", "updateSnatRule", "deleteSnatRule"]
  }
  operations { 
    service     = "VPC(NAT)"
    resource    = "natgateway"
    trace_names = ["createNatGateway", "deleteNatGateway", "updateNatGateway"]
  } 
}

# for CN-Hong Kong region
resource "huaweicloud_smn_topic" "cts_important_notices_login" {
  region       = "ap-southeast-1"
  name         = var.smn_topic_name
  display_name = "The CTS important notification"
}

resource "huaweicloud_smn_subscription" "cts_imp_notices_login_email_subcription" {
  # count =  length(var.cts_important_notify_email) > 0  ? 1 : 0
  region    = "ap-southeast-1"
  topic_urn = huaweicloud_smn_topic.cts_important_notices_login.id
  endpoint  =  var.cts_important_notify_email
  protocol  = "email"
}

# resource "huaweicloud_smn_subscription" "cts_imp_notices_login_sms_subcription" {
#   count =  length(var.cts_important_notify_phone) > 0  ? 1 : 0     
#   topic_urn = huaweicloud_smn_topic.cts_important_notices_login.id
#   endpoint  =  var.cts_important_notify_phone
#   protocol  = "sms"
# }

resource "huaweicloud_cts_notification" "cts_root_account_notify" {
  name           = var.keyOperate_notify_login
  operation_type = "customized"
  smn_topic      = huaweicloud_smn_topic.cts_important_notices_login.topic_urn
  region         = "ap-southeast-1"

  operations { 
    service     = "IAM"
    resource    = "user"
    trace_names = ["login", "loginFailed"]
  }
  operations { 
    service     = "IAM"
    resource    = "SecurityPolicy"
    trace_names = ["modifySecurityPolicy"]
  }
  # operation_users { 
  #   group = "admin"
  #   users = [var.root_account_name]
  # } 
}