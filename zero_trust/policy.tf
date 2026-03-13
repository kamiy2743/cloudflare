resource "cloudflare_zero_trust_access_policy" "admin" {
    account_id       = var.account_id
    name             = "admin"
    decision         = "allow"
    session_duration = "15m"

    include = [
        {
            email = {
                email = "kamiy2743@gmail.com"
            }
        }
    ]

    require = [
        {
            geo = {
                country_code = "JP"
            }
        }
    ]
}
