terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.12.0" # 固定版本，例如4.12.x
    }
  }

  required_version = ">= 1.5.0" # 可選，指定 Terraform 版本
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

