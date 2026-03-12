variable "account_id" {
	type = string
}

variable "zone_id" {
	type = string
}

variable "tunnels" {
	type = map(object({
		dns_record_name = string
	}))
}
