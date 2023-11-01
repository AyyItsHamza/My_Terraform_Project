module "network_dev" {
  source = "../modules/network"
}

module "ec2_dev" {
  source    = "../modules/ec2"
  instances = var.instances
  vpc_id    = module.network_dev.vpc_id
}
