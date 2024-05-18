module "vpc" {
  source  = "./modules/vpc"
  network_name = var.network_name
}

module "subnetworks" {
  source  = "./modules/subnetworks"
  network = module.vpc.output_network_name
  subnetwork_name = var.subnetwork_name
}

module "instances" {
  source = "./modules/compute-instances"
  network = module.vpc.output_network_name
  subnetwork = module.subnetworks.output_subnetwork_name
  instance_name = var.instance_name
}



