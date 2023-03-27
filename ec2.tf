
##3this will create an ec2 instance 
resource "aws_instance" "ec2" {
  ami = data.aws_ami.example.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1.sh")
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id,aws_security_group.allow_http.id]
  ####path module is like a current direct
}