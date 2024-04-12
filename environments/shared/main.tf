module "terraform_workshop_static_site_shared" {
  source = "../../modules/apps/terraform-workshop-static-site/shared"

  project_name = "terraform-workshop-static-site"
}
