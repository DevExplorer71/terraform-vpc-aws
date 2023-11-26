module "vpc" {
  source  = "./modules/vpc"
  network_name = var.global_network_name
}