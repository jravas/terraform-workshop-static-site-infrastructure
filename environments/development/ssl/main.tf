module "ssl_app" {
  source = "../../../modules/acm"

  environment = var.environment
  domain_name = var.domain_name
}
