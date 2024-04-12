locals {
  environment  = "development"
  project_name = "terraform-workshop-static-site"

  vpc_id          = data.terraform_remote_state.shared.outputs.terraform_workshop_static_site.vpc.vpc_id
  public_subnets  = data.terraform_remote_state.shared.outputs.terraform_workshop_static_site.vpc.public_subnets
  private_subnets = data.terraform_remote_state.shared.outputs.terraform_workshop_static_site.vpc.private_subnets
}
