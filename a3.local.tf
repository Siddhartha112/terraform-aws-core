locals {
  owners = var.business_division
  environment = var.environment
  name = "${var.business_division}-${var.environment}"
  ###i launch an ec2 instance-hr-sap-ec2
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
}