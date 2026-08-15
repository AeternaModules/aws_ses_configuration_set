output "ses_configuration_sets_id" {
  description = "Map of id values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_configuration_sets_arn" {
  description = "Map of arn values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ses_configuration_sets_delivery_options" {
  description = "Map of delivery_options values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => one(v.delivery_options) if v.delivery_options != null && length(v.delivery_options) > 0 }
}
output "ses_configuration_sets_last_fresh_start" {
  description = "Map of last_fresh_start values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => v.last_fresh_start if v.last_fresh_start != null && length(v.last_fresh_start) > 0 }
}
output "ses_configuration_sets_name" {
  description = "Map of name values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ses_configuration_sets_region" {
  description = "Map of region values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ses_configuration_sets_reputation_metrics_enabled" {
  description = "Map of reputation_metrics_enabled values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => v.reputation_metrics_enabled if v.reputation_metrics_enabled != null }
}
output "ses_configuration_sets_sending_enabled" {
  description = "Map of sending_enabled values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => v.sending_enabled if v.sending_enabled != null }
}
output "ses_configuration_sets_tracking_options" {
  description = "Map of tracking_options values across all ses_configuration_sets, keyed the same as var.ses_configuration_sets"
  value       = { for k, v in aws_ses_configuration_set.ses_configuration_sets : k => one(v.tracking_options) if v.tracking_options != null && length(v.tracking_options) > 0 }
}

