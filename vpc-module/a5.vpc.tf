module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs = var.vpc_availability_zones
  public_subnets = var.vpc_public_subnet
  private_subnets = var.vpc_private_subnet
  database_subnets  = var.vpc_database_subnet
  create_database_subnet_group = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table
  enable_dns_hostnames = true 
  enable_dns_support = true 
  tags = local.common_tags 
}