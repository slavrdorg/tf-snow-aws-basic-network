module "aws_network" {
  source               = "git::https://github.com/slavrd/terraform-aws-basic-network.git?ref=0.4.1"
  vpc_cidr_block       = var.vpc_cidr_block
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  name_prefix          = var.name_prefix
  common_tags          = var.common_tags
}