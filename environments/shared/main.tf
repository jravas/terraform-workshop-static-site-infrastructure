module "networking" {
  source   = "../../modules/vpc"
  vpc_name = "terraform-workshop-static-site"
}
