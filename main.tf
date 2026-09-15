variable "api_token" {}
variable "zone_id" {}

terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}

provider "cloudflare" {
  api_token = var.api_token
}

resource "cloudflare_record" "hello_world" {
  zone_id = var.zone_id
  name    = "hello"
  content   = "\"hello world from terraform\""
  type    = "TXT"
  ttl = 300
}
