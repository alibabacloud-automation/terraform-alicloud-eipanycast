output "this_eip_anycast_service_id" {
  description = "The EIP Anycast service ID."
  value       = length(alicloud_eipanycast_anycast_eip_address.eip_address) > 0 ? alicloud_eipanycast_anycast_eip_address.eip_address[0].id : null
}