resource "aws_route53_zone" "this" {
  name = var.domain_name
}

# resource "aws_route53_record" "web" {
#   zone_id = aws_route53_zone.this.zone_id
#   name    = var.domain_name
#   type    = "A"

#   alias {
#     name                   = var.web_app_alias
#     zone_id                = var.cloudfront_zone_id
#     evaluate_target_health = true
#   }
# }

# Route 53 Record for ACM Certificate Validation
resource "aws_route53_record" "acm_validation" {
  zone_id = aws_route53_zone.this.zone_id
  name    = var.domain_name
  type    = "CNAME"

  alias {
    name                   = var.web_app_alias
    zone_id                = var.cloudfront_zone_id
    evaluate_target_health = true
  }
}

# Route 53 Record for CloudFront Distribution
resource "aws_route53_record" "cloudfront" {
  zone_id = aws_route53_zone.this.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = var.cloudfront_domain_name
    zone_id                = var.cloudfront_zone_id
    evaluate_target_health = true
  }
}
