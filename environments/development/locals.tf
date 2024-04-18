locals {
  environment  = "development"
  project_name = "terraform-workshop-static-site"

  vpc_id          = data.terraform_remote_state.shared.outputs.vpc.vpc_id
  public_subnets  = data.terraform_remote_state.shared.outputs.vpc.public_subnets
  private_subnets = data.terraform_remote_state.shared.outputs.vpc.private_subnets
}
