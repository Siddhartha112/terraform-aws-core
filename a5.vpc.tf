module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs = var.vpc_availability_zones
  public_subnet = var.vpc_public_subnet
  private_subnet = var.vpc_private_subnet
  database_subnet = var.vpc_database_subnet
  createcreate_database_subnet_group = vpc.vpc_create_database_subnet_group
  create_datacreate_database_subnet_route_table = var.create_datacreate_database_subnet_route_table
  enable_dns_hostname = true 
  enable_dns_support = true 
  tags = local.common_tags 
}