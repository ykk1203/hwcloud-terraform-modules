output "smn_topic_urn" {
  value       = huaweicloud_smn_topic.cts_important_notices.id
  description = "SMN Topic URN"
}

output "smn_email_subscription_urn" {
  value       = huaweicloud_smn_subscription.cts_imp_notices_email_subcription.id
  description = "SMN Email Subscription URN"
}