output "shipping_rates_id" {
  description = "Map of id values across all shipping_rates, keyed the same as var.shipping_rates except keys with no id are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shipping_rates_active" {
  description = "Map of active values across all shipping_rates, keyed the same as var.shipping_rates except keys with no active are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.active if v.active != null }
}
output "shipping_rates_created" {
  description = "Map of created values across all shipping_rates, keyed the same as var.shipping_rates except keys with no created are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.created if v.created != null }
}
output "shipping_rates_delivery_estimate" {
  description = "Map of delivery_estimate values across all shipping_rates, keyed the same as var.shipping_rates except keys with no delivery_estimate are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.delivery_estimate if v.delivery_estimate != null && length(v.delivery_estimate) > 0 }
}
output "shipping_rates_display_name" {
  description = "Map of display_name values across all shipping_rates, keyed the same as var.shipping_rates except keys with no display_name are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "shipping_rates_fixed_amount" {
  description = "Map of fixed_amount values across all shipping_rates, keyed the same as var.shipping_rates except keys with no fixed_amount are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.fixed_amount if v.fixed_amount != null && length(v.fixed_amount) > 0 }
}
output "shipping_rates_livemode" {
  description = "Map of livemode values across all shipping_rates, keyed the same as var.shipping_rates except keys with no livemode are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.livemode if v.livemode != null }
}
output "shipping_rates_metadata" {
  description = "Map of metadata values across all shipping_rates, keyed the same as var.shipping_rates except keys with no metadata are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "shipping_rates_object" {
  description = "Map of object values across all shipping_rates, keyed the same as var.shipping_rates except keys with no object are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.object if v.object != null && length(v.object) > 0 }
}
output "shipping_rates_tax_behavior" {
  description = "Map of tax_behavior values across all shipping_rates, keyed the same as var.shipping_rates except keys with no tax_behavior are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.tax_behavior if v.tax_behavior != null && length(v.tax_behavior) > 0 }
}
output "shipping_rates_tax_code" {
  description = "Map of tax_code values across all shipping_rates, keyed the same as var.shipping_rates except keys with no tax_code are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.tax_code if v.tax_code != null && length(v.tax_code) > 0 }
}
output "shipping_rates_type" {
  description = "Map of type values across all shipping_rates, keyed the same as var.shipping_rates except keys with no type are omitted"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.type if v.type != null && length(v.type) > 0 }
}

