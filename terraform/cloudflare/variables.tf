variable "cloudflare_token" {
  description = "Cloudflare API Token"
  type        = string
  nullable    = false
  sensitive   = true
}

variable "cloudflare_domain" {
  description = "Parent domain to create DNS under"
  type        = string
  nullable    = false
}

variable "target_ip" {
  description = "Target IP to create the DNS record for"
  type        = string
  nullable    = false
}

variable "subdomain_name" {
  description = "Name of the subdomain to create"
  type        = string
  nullable    = false
}