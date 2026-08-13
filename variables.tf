variable "ses_configuration_sets" {
  description = <<EOT
Map of ses_configuration_sets, attributes below
Required:
    - name
Optional:
    - region
    - reputation_metrics_enabled
    - sending_enabled
    - delivery_options (block):
        - tls_policy (optional)
    - tracking_options (block):
        - custom_redirect_domain (optional)
EOT

  type = map(object({
    name                       = string
    region                     = optional(string)
    reputation_metrics_enabled = optional(bool)
    sending_enabled            = optional(bool)
    delivery_options = optional(object({
      tls_policy = optional(string)
    }))
    tracking_options = optional(object({
      custom_redirect_domain = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

