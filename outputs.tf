output "ses_event_destinations_id" {
  description = "Map of id values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_event_destinations_arn" {
  description = "Map of arn values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ses_event_destinations_cloudwatch_destination" {
  description = "Map of cloudwatch_destination values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.cloudwatch_destination if v.cloudwatch_destination != null && length(v.cloudwatch_destination) > 0 }
}
output "ses_event_destinations_configuration_set_name" {
  description = "Map of configuration_set_name values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.configuration_set_name if v.configuration_set_name != null && length(v.configuration_set_name) > 0 }
}
output "ses_event_destinations_enabled" {
  description = "Map of enabled values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.enabled if v.enabled != null }
}
output "ses_event_destinations_kinesis_destination" {
  description = "Map of kinesis_destination values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => one(v.kinesis_destination) if v.kinesis_destination != null && length(v.kinesis_destination) > 0 }
}
output "ses_event_destinations_matching_types" {
  description = "Map of matching_types values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.matching_types if v.matching_types != null && length(v.matching_types) > 0 }
}
output "ses_event_destinations_name" {
  description = "Map of name values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ses_event_destinations_region" {
  description = "Map of region values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ses_event_destinations_sns_destination" {
  description = "Map of sns_destination values across all ses_event_destinations, keyed the same as var.ses_event_destinations"
  value       = { for k, v in aws_ses_event_destination.ses_event_destinations : k => one(v.sns_destination) if v.sns_destination != null && length(v.sns_destination) > 0 }
}

