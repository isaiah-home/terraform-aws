data "aws_route53_zone" "primary" {
  name = "${var.domain}"
}

resource "aws_route53_record" "primary" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = ""
  type    = "A"
  ttl     = "300"
  records = ["${var.public_ip}"]
}

resource "aws_route53_record" "keycloak" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "auth"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}

resource "aws_route53_record" "wikijs" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "wiki"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}

resource "aws_route53_record" "nextcloud" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "nextcloud"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}

resource "aws_route53_record" "snipe_it" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "snipeit"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}

resource "aws_route53_record" "vaultwarden" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "vaultwarden"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}

resource "aws_route53_record" "pihole" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "pihole"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}

resource "aws_route53_record" "homeassistant" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "homeassistant"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}

resource "aws_route53_record" "goaccess" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "goaccess"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.domain}"]
}
