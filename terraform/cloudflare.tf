resource "cloudflare_record" "cms-prod-backend"{
    zone_id = var.cloudflare_zone_id
    name  = var.domain_name
    value = linode_instance.cms-prod.ip_address
    type = "A"
    proxied = true
}
