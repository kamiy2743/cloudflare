resource "cloudflare_zero_trust_tunnel_cloudflared" "this" {
	for_each = var.tunnels

	account_id = var.account_id
	name       = each.key
	config_src = "cloudflare"
}

resource "cloudflare_dns_record" "this" {
	for_each = var.tunnels

	zone_id  = var.zone_id
	type     = "CNAME"
	name     = each.value.dns_record_name
	content  = "${cloudflare_zero_trust_tunnel_cloudflared.this[each.key].id}.cfargotunnel.com"
	ttl      = 1
	proxied  = true
}
