resource "cloudflare_dns_record" "root_domain_tunnel" {
    zone_id = data.cloudflare_zone.panda_dev_net.id
    type    = "CNAME"
    name    = "panda-dev.net"
    content = "${data.cloudflare_zero_trust_tunnel_cloudflared.root_domain.id}.cfargotunnel.com"
    ttl     = 1
    proxied = true
}

resource "cloudflare_dns_record" "http_server_tunnel" {
    zone_id = data.cloudflare_zone.panda_dev_net.id
    type    = "CNAME"
    name    = "http-server"
    content = "${data.cloudflare_zero_trust_tunnel_cloudflared.http_server.id}.cfargotunnel.com"
    ttl     = 1
    proxied = true
}

resource "cloudflare_dns_record" "blog_tunnel" {
    zone_id = data.cloudflare_zone.panda_dev_net.id
    type    = "CNAME"
    name    = "blog"
    content = "${data.cloudflare_zero_trust_tunnel_cloudflared.blog.id}.cfargotunnel.com"
    ttl     = 1
    proxied = true
}
