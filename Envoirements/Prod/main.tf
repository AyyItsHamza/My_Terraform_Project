module "network_prod" {
  source = "../modules/network"
}

module "ec2_prod" {
  source    = "../modules/ec2"
  instances = var.instances
  vpc_id    = module.network_prod.vpc_id
}
