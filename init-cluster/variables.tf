variable "digitalocean_token" {
  description = "DigitalOcean API Token"
  type        = string
  nullable    = false
  sensitive   = true
}

variable "cluster_name" {
  description = "Name of the K8s cluster"
  type        = string
  default     = "main"
}

variable "cluster_region" {
  description = "Region of the DigitalOcean datacenter"
  type        = string
  default     = "tor1" # Toronto, Canada
}

variable "node_pool_name" {
  description = "Name of the K8s node pool"
  type        = string
  default     = "default"
}

variable "node_pool_size" {
  description = "Size of the K8s node pool"
  type        = string
  default     = "s-1vcpu-2gb" # (Shared CPU, 2GB total RAM, 1 vCPU, 50GB storage) $12 CAD/month
}

variable "node_count" {
  description = "Total amount of nodes"
  type        = number
  default     = 2 # Minimum of 2 is recommended to prevent downtime during upgrades or maintenance
}
