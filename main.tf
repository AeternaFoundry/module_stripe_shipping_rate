resource "stripe_shipping_rate" "shipping_rates" {
  for_each = var.shipping_rates

  display_name = each.value.display_name
  active       = each.value.active
  metadata     = each.value.metadata
  tax_behavior = each.value.tax_behavior
  tax_code     = each.value.tax_code
  type         = each.value.type

  dynamic "delivery_estimate" {
    for_each = each.value.delivery_estimate != null ? each.value.delivery_estimate : []
    content {
      dynamic "maximum" {
        for_each = delivery_estimate.value.maximum != null ? delivery_estimate.value.maximum : []
        content {
          unit  = maximum.value.unit
          value = maximum.value.value
        }
      }
      dynamic "minimum" {
        for_each = delivery_estimate.value.minimum != null ? delivery_estimate.value.minimum : []
        content {
          unit  = minimum.value.unit
          value = minimum.value.value
        }
      }
    }
  }

  dynamic "fixed_amount" {
    for_each = each.value.fixed_amount != null ? each.value.fixed_amount : []
    content {
      amount   = fixed_amount.value.amount
      currency = fixed_amount.value.currency
      dynamic "currency_options" {
        for_each = fixed_amount.value.currency_options != null ? fixed_amount.value.currency_options : []
        content {
          amount       = currency_options.value.amount
          key          = currency_options.value.key
          tax_behavior = currency_options.value.tax_behavior
        }
      }
    }
  }
}

