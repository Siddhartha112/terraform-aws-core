variable "aws_region" {
  description = "this is for region"
  type = string #string list
  default = "us-east-1"
}

variable "instance_type" {
  description = "this is for region"
  type = string #string list
  default = "t2.micro"
}

variable "environment" {
  type = string 
  default = "dev"
}

variable "business_division" {
  type = string 
  default = "SAP"
}
variable "instance_keypair" {
  type = string
  default = "bastionkey"
}