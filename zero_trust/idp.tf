resource "cloudflare_zero_trust_access_identity_provider" "google" {
    account_id = var.account_id
    name       = "google"
    type       = "google"

    config = {
        client_id    = "803881008910-7totmqt8khlvu3vo8t8hg00nl974tac7.apps.googleusercontent.com"
        pkce_enabled = true
    }
}
