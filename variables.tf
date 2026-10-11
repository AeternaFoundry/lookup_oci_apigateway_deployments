variable "apigateway_deployments_lookup" {
  description = <<EOT
Map of apigateway_deployments_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - gateway_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    gateway_id     = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

