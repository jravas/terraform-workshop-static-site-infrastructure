module "vpc" {
  source   = "../../../vpc"
  vpc_name = var.project_name
}
