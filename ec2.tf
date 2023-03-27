data "aws_availability_zones" "my_az" {
  filter {
    name = "opt-in-status"
    values = "opt-in-not-required"
  }
}
##3this will create an ec2 instance 
resource "aws_instance" "ec2" {
  ami = data.aws_ami.example.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1.sh")
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id,aws_security_group.allow_http.id]
  for_each = toset(data.aws_availability_zones.my_az.names)
  availability_zone = each.key
  tags = {
    "Name" = "for_each_demo-${each.value}"
  }
  ####path module is like a current direct
}