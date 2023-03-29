module "ec2_private" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"
  name = "${var.environment}-vm"
  ami = data.aws_ami.example.id
  instance_type = var.instance_type
  key_name = var.instance_keypair
  subnet_id = module.vpc.private_subnets[0]
  vpc_security_group_ids = [module.private_sg.security_group_id]
  tags = local.common_tags
  
}