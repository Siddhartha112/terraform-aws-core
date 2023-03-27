data "aws_ec2_instance_type_offering" "my_instance_1" {
    filter {
      name = "instance_type"
      values = [ "t3.micro" ]
    }
    filter {
      name = "location"
      values = ["us-east-1a","us-east-1b"]
    }
    location_type = "availability-zone"
  
}