
##3this will create an ec2 instance 
resource "aws_instance" "ec2" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
}