resource "cloudflare_ruleset" "no_cache" {
    zone_id = cloudflare_zone.panda_dev_net.id
    name    = "no-cache"
    kind    = "zone"
    phase   = "http_request_cache_settings"

    rules = [
        {
            description = "no-cache"
            action      = "set_cache_settings"
            expression  = "true"

            action_parameters = {
                cache = false
            }
        }
    ]
}
