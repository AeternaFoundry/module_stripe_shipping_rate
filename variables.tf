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
  validation {
    condition = alltrue([
      for k, v in var.shipping_rates : (
        v.tax_behavior == null || (contains(["exclusive", "inclusive", "unspecified"], v.tax_behavior))
      )
    ])
    error_message = "must be one of: \"exclusive\", \"inclusive\", \"unspecified\""
  }
  validation {
    condition = alltrue([
      for k, v in var.shipping_rates : (
        v.type == null || (contains(["fixed_amount"], v.type))
      )
    ])
    error_message = "must be one of: \"fixed_amount\""
  }
  validation {
    condition = alltrue([
      for k, v in var.shipping_rates : (
        v.delivery_estimate == null || alltrue([for item in v.delivery_estimate : (item.maximum == null || alltrue([for item in item.maximum : (contains(["business_day", "day", "hour", "month", "week"], item.unit))]))])
      )
    ])
    error_message = "must be one of: \"business_day\", \"day\", \"hour\", \"month\", \"week\""
  }
  validation {
    condition = alltrue([
      for k, v in var.shipping_rates : (
        v.delivery_estimate == null || alltrue([for item in v.delivery_estimate : (item.minimum == null || alltrue([for item in item.minimum : (contains(["business_day", "day", "hour", "month", "week"], item.unit))]))])
      )
    ])
    error_message = "must be one of: \"business_day\", \"day\", \"hour\", \"month\", \"week\""
  }
  validation {
    condition = alltrue([
      for k, v in var.shipping_rates : (
        v.fixed_amount == null || alltrue([for item in v.fixed_amount : (item.currency_options == null || alltrue([for item in item.currency_options : (item.tax_behavior == null || (contains(["exclusive", "inclusive", "unspecified"], item.tax_behavior)))]))])
      )
    ])
    error_message = "must be one of: \"exclusive\", \"inclusive\", \"unspecified\""
  }
}

