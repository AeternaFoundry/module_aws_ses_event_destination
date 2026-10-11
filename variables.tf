variable "ses_event_destinations" {
  description = <<EOT
Map of ses_event_destinations, attributes below
Required:
    - configuration_set_name
    - matching_types
    - name
Optional:
    - enabled
    - region
    - cloudwatch_destination (block):
        - default_value (required)
        - dimension_name (required)
        - value_source (required)
    - kinesis_destination (block):
        - role_arn (required)
        - stream_arn (required)
    - sns_destination (block):
        - topic_arn (required)
EOT

  type = map(object({
    configuration_set_name = string
    matching_types         = set(string)
    name                   = string
    enabled                = optional(bool)
    region                 = optional(string)
    cloudwatch_destination = optional(list(object({
      default_value  = string
      dimension_name = string
      value_source   = string
    })))
    kinesis_destination = optional(object({
      role_arn   = string
      stream_arn = string
    }))
    sns_destination = optional(object({
      topic_arn = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ses_event_destinations : (
        v.cloudwatch_destination == null || alltrue([for item in v.cloudwatch_destination : ((length(item.dimension_name) >= 1 && length(item.dimension_name) <= 256) && (can(regex("^[0-9A-Za-z_:-]+$", item.dimension_name))))])
      )
    ])
    error_message = "all of: must be between 1 and 256 characters; must contain only alphanumeric, underscore, and hyphen characters"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

