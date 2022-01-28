/* Backend DetasourceDefinition of HostZone */
resource "aws_route53_zone" "realshinkitv-host-zone" {
  name    = "realshinkitv.com"
  comment = "realshinkitv host zone"
}

resource "aws_route53_record" "realshinkitv-host-zone-record" {
  zone_id = aws_route53_zone.realshinkitv-host-zone.zone_id
  name    = aws_route53_zone.realshinkitv-host-zone.name
  type    = "A"

  alias {
    name                   = aws_lb.realshinkitv-backend-alb.dns_name
    zone_id                = aws_lb.realshinkitv-backend-alb.zone_id
    evaluate_target_health = true
  }
}


/* Frontend DetasourceDefinition of HostZone */
resource "aws_route53_zone" "realshinkitv-zone" {
  name = "realshinkitv.com"
  tags = {
    "realshinkitv" = "realshinkitv.com"
  }
}
resource "aws_route53_record" "realshinkitv-zone-record" {
  zone_id = aws_route53_zone.realshinkitv-zone.id
  name    = aws_route53_zone.realshinkitv-zone.name
  type    = "A"

  alias {
    name                   = aws_lb.realshinkitv-frontend-alb.dns_name
    zone_id                = aws_lb.realshinkitv-frontend-alb.zone_id
    evaluate_target_health = true
  }
}