
# module "ssl_certificates" {
#   source      = "./ssl"
#   domain_name = "thecenterofgalaxy.world"
#   environment = local.environment
#   providers = {
#     aws = aws.global
#   }
# }

# module "storage" {
#   source = "../../modules/cdn"

#   environment           = local.environment
#   s3_bucket_domain_name = "cdn.${module.ssl_certificates.frontend.domain_name}"
#   acm_certificate_arn   = module.ssl_certificates.frontend.arn
# }

# resource "aws_route53_zone" "this" {
#   name = module.ssl_certificates.frontend.domain_name
# }

# # Route 53 Record for ACM Certificate Validation
# # resource "aws_route53_record" "acm_validation" {
# #   zone_id = aws_route53_zone.this.zone_id
# #   name    = module.ssl_certificates.frontend.aws_acm_certificate_validation.domain_name
# #   type    = "CNAME"

# #   alias {
# #     name                   = module.ssl_certificates.frontend.aws_acm_certificate_validation.record_fqdn
# #     zone_id                = module.ssl_certificates.frontend.aws_acm_certificate_validation.zone_id
# #     evaluate_target_health = true
# #   }
# # }

# # Route 53 Record for CloudFront Distribution
# resource "aws_route53_record" "cloudfront" {
#   zone_id = aws_route53_zone.this.zone_id
#   name    = module.ssl_certificates.frontend.domain_name
#   type    = "A"

#   alias {
#     name                   = module.storage.domain_name
#     zone_id                = module.storage.cdn_zone_id
#     evaluate_target_health = true
#   }
# }


