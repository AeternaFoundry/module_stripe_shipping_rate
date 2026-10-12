variable "shipping_rates" {
  description = <<EOT
Map of shipping_rates, attributes below
Required:
    - display_name
Optional:
    - active
    - metadata
    - tax_behavior
    - tax_code
    - type
    - delivery_estimate (block):
        - maximum (optional, block):
            - unit (required)
            - value (required)
        - minimum (optional, block):
            - unit (required)
            - value (required)
    - fixed_amount (block):
        - amount (required)
        - currency (required)
        - currency_options (optional, block):
            - amount (required)
            - key (required)
            - tax_behavior (optional)
EOT

  type = map(object({
    display_name = string
    active       = optional(bool)
    metadata     = optional(map(string))
    tax_behavior = optional(string)
    tax_code     = optional(string)
    type         = optional(string)
    delivery_estimate = optional(list(object({
      maximum = optional(list(object({
        unit  = string
        value = number
      })))
      minimum = optional(list(object({
        unit  = string
        value = number
      })))
    })))
    fixed_amount = optional(list(object({
      amount   = number
      currency = string
      currency_options = optional(list(object({
        amount       = number
        key          = string
        tax_behavior = optional(string)
      })))
    })))
  }))
}

