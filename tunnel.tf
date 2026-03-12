resource "cloudflare_zero_trust_tunnel_cloudflared" "root_domain" {
    account_id = var.account_id
    name       = "root-domain"
    config_src = "cloudflare"
}

resource "cloudflare_zero_trust_tunnel_cloudflared" "http_server" {
    account_id = var.account_id
    name       = "http-server"
    config_src = "cloudflare"
}

resource "cloudflare_zero_trust_tunnel_cloudflared" "blog" {
    account_id = var.account_id
    name       = "blog"
    config_src = "cloudflare"
}
