resource "cloudflare_zero_trust_access_application" "blog" {
    account_id       = var.account_id
    type             = "self_hosted"
    name             = "blog"
    session_duration = "15m"

    http_only_cookie_attribute = true
    same_site_cookie_attribute = "lax"
    options_preflight_bypass   = false
    enable_binding_cookie      = true

    destinations = [
        {
            type = "public"
            uri  = "blog.panda-dev.net/admin"
        },
        {
            type = "public"
            uri  = "blog.panda-dev.net/admin/*"
        }
    ]

    policies = [
        {
            id = cloudflare_zero_trust_access_policy.admin.id
        }
    ]

    auto_redirect_to_identity = true
    allowed_idps = [
        cloudflare_zero_trust_access_identity_provider.google.id
    ]
}
