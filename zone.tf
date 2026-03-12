resource "cloudflare_zone" "panda_dev_net" {
	account = {
		id = var.account_id
	}
	name = "panda-dev.net"
}
