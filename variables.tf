variable "anycast_eip_address_name" {
  type        = string
  description = "The name of any cast service."
  default     = null
}

variable "bandwidth" {
  type        = number
  description = "The bandwidth of eip anycast service."
  default     = null
}

variable "description" {
  type        = string
  description = "The description of any cast service."
  default     = null
}

variable "internet_charge_type" {
  type        = string
  description = "The charge type of EIP Anycast service."
  default     = "PayByBandwidth"
}

variable "service_location" {
  type        = string
  description = "The location of any cast service."
  default     = "international"
}

variable "bind_instance_id" {
  type        = string
  description = "The instance ID to bind to the EIP Anycast service. This should typically be a SLB instance ID."
}

variable "bind_instance_region_id" {
  type        = string
  description = "The region ID of the instance to bind to the EIP Anycast service."
}

variable "create" {
  description = "Whether to create resources in module."
  type        = bool
  default     = false
}