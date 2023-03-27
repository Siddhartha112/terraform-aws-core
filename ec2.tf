
##3this will create an ec2 instance 
resource "aws_instance" "ec2" {
  ami = "ami-00eeedc4036573771"
  instance_type = "t2.micro"
}