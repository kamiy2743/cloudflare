# cloudflare 追記時の最小ガイド

## 構成
- `zero_trust/`: Account スコープの設定（Access/IdP/Policy/App）
- `zone/panda_dev_net/`: Zone スコープの設定（Zone/DNS/Cache Rules）
- `modules/tunnel/`: Tunnel + DNS CNAME をまとめる共通モジュール

## 追記ルール
- Account リソースは `zero_trust/`、Zone リソースは `zone/panda_dev_net/` に追加する
- `terraform.tfvars` と `variables.tf` はディレクトリごとに管理する（自動継承されない）
- state は `zero_trust` と `zone` で分離する

## Cache Rules の注意
- `http_request_cache_settings` は既存 ruleset があると新規作成できない
- 既存管理に切り替える場合は `terraform import` を使う  
  例: `terraform import cloudflare_ruleset.no_cache zones/<zone_id>/<ruleset_id>`
