variable "licensemanager_grants" {
  description = <<EOT
Map of licensemanager_grants, attributes below
Required:
    - allowed_operations
    - license_arn
    - name
    - principal
Optional:
    - region
EOT

  type = map(object({
    allowed_operations = set(string)
    license_arn        = string
    name               = string
    principal          = string
    region             = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

