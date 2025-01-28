resource "cloudflare_zone" "rising_shop" {
  account_id = "22000c73a5429e6d84d92dea967a3111"
  zone       = "rising-shop-dg.com"
  plan       = "free"
  paused     = false
  type       = "full"
}

resource "cloudflare_record" "www" {
  zone_id = cloudflare_zone.rising_shop.id
  name    = "www"
  type    = "A"
  value   = "43.207.0.131"
  proxied = true
  ttl     = 1
}
resource "cloudflare_record" "monitoring" {
  zone_id = cloudflare_zone.rising_shop.id
  name    = "monitoring"
  type    = "A"
  value   = "13.231.248.113"
  proxied = true
  ttl     = 1
}

