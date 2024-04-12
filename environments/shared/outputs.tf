output "user_credentials" {
  description = "Credentials for all users"
  sensitive   = true
  value = [
    module.terraform_user,
    module.vlatko_vlahek_user,
    module.dino_stancic,
    module.josip_ravas_user,
  ]
}

