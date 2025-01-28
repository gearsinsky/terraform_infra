# 模組層 variables.tf
variable "zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
}

variable "domain" {
  description = "Cloudflare domain"
  type        = string
}

variable "record_name" {
  description = "DNS record name"
  type        = string
}

variable "record_type" {
  description = "DNS record type (e.g., A, CNAME)"
  type        = string
}

variable "record_value" {
  description = "DNS record value (e.g., IP address)"
  type        = string
}

variable "ttl" {
  description = "Time to live for DNS record"
  type        = number
}

variable "proxied" {
  description = "Whether the record is proxied through Cloudflare"
  type        = bool
}

