resource "cloudflare_record" "dns_record" {
  zone_id    = var.zone_id
  domain     = var.domain
  name       = var.record_name
  type       = var.record_type
  value      = var.record_value
  ttl        = var.ttl
  proxied    = var.proxied
}
