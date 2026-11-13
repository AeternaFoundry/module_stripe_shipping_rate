output "shipping_rates_id" {
  description = "Map of id values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.id }
}
output "shipping_rates_active" {
  description = "Map of active values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.active }
}
output "shipping_rates_created" {
  description = "Map of created values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.created }
}
output "shipping_rates_delivery_estimate" {
  description = "Map of delivery_estimate values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.delivery_estimate }
}
output "shipping_rates_display_name" {
  description = "Map of display_name values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.display_name }
}
output "shipping_rates_fixed_amount" {
  description = "Map of fixed_amount values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.fixed_amount }
}
output "shipping_rates_livemode" {
  description = "Map of livemode values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.livemode }
}
output "shipping_rates_metadata" {
  description = "Map of metadata values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.metadata }
}
output "shipping_rates_object" {
  description = "Map of object values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.object }
}
output "shipping_rates_tax_behavior" {
  description = "Map of tax_behavior values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.tax_behavior }
}
output "shipping_rates_tax_code" {
  description = "Map of tax_code values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.tax_code }
}
output "shipping_rates_type" {
  description = "Map of type values across all shipping_rates, keyed the same as var.shipping_rates"
  value       = { for k, v in stripe_shipping_rate.shipping_rates : k => v.type }
}

