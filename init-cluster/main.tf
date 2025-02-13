terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.46.0"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}

# This pulls the latest kubernetes version supported by digitalocean
data "digitalocean_kubernetes_versions" "current" {}

resource "digitalocean_kubernetes_cluster" "new_cluster" {
  name    = var.cluster_name
  region  = var.cluster_region
  version = data.digitalocean_kubernetes_versions.current.latest_version

  node_pool {
    name       = var.node_pool_name
    size       = var.node_pool_size
    node_count = var.node_count
  }
}