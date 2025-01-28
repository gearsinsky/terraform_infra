provider "cloudflare" {
  email   = "gearsinsky@gmail.com"             # 如果你使用的是 API Key
  api_key = "e2586ec185bd1c783afe434c100b9562" # 如果你使用的是 API Key
}

data "cloudflare_zone" "rising-shop-dg" {
  zone_id = var.zone_id # 替換為你的實際 zone_id
}

