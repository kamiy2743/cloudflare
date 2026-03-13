module "tunnel" {
	source = "../../modules/tunnel"

	account_id  = var.account_id
	zone_id     = cloudflare_zone.panda_dev_net.id

	tunnels = {
		root-domain: {
			dns_record_name = "panda-dev.net"
		},
		http-server: {
			dns_record_name = "http-server"
		},
		blog: {
			dns_record_name = "blog"
		},
	}
}
