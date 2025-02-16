terraform {
  cloud {
    organization = "zampsn"
    workspaces {
      name = "cloudflare"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_token
}

resource "cloudflare_record" "wildcard" {
  zone_id = data.cloudflare_zone.domain.zone_id
  name    = var.subdomain_name
  content = var.target_ip
  type    = "A"
  proxied = true
}

data "cloudflare_zone" "domain" {
  name = var.cloudflare_domain
}
