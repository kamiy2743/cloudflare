data "cloudflare_zone" "panda_dev_net" {
	filter = {
		name = "panda-dev.net"
	}
}

data "cloudflare_zero_trust_tunnel_cloudflared" "root_domain" {
	account_id = var.account_id
	filter = {
		name = "root-domain"
	}
}

data "cloudflare_zero_trust_tunnel_cloudflared" "http_server" {
	account_id = var.account_id
	filter = {
		name = "http-server"
	}
}

data "cloudflare_zero_trust_tunnel_cloudflared" "blog" {
	account_id = var.account_id
	filter = {
		name = "blog"
	}
}
